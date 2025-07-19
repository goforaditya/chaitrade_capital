module.exports = {
  content: [
    "./app/views/**/*.{erb,html}",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js"
  ],
  theme: {
    extend: {
      keyframes: {
        scroll: {
          "0%":   { transform: "translateX(100%)" },
          "100%": { transform: "translateX(-100%)" }
        }
      },
      animation: {
        scroll: "scroll 30s linear infinite"
      }
    }
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/aspect-ratio")
  ]
}
