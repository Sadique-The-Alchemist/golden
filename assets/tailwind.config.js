const colors= require('tailwindcss/colors')
module.exports = {
  mode: "jit",
  purge: {
    content: ["./js/**/*.js","../lib/*_web/**/*.*ex"],
    options: {
      whitelist: [/phx/,/nprogress/]
    }
  },
  theme: {
    extend: {
      colors: {
        'light-blue': colors.lightBlue,
        cyan: colors.cyan
      }
    },
  },
  variants: {
    extends: {
      borderWidth: ['hover']
    },
  },
  plugins: [require('@tailwindcss/forms')],
}
