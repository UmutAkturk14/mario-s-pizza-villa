const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Lora', ...defaultTheme.fontFamily.sans],
        "heading": ['Croissant One', "cursive"],
      },

      dropShadow: {
        "3xl": "0 35px 35px rgba(0, 0, 0, 0.5)"
      },

      animation: {
        "fade-in": "fadeInAnimation 1s ease-in-out forwards",
      },

      keyframes: {
        fadeInAnimation: {
          "0%": { opacity: 0 },
          "100%": { opacity: 1 },
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
