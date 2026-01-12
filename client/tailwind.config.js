import forms from "@tailwindcss/forms";

/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,jsx,ts,tsx}",
  ],

  theme: {
    fontFamily: {
      display: ["Open Sans", "sans-serif"],
      body: ["Open Sans", "sans-serif"],
    },

    extend: {
      screens: {
        mf: "990px",
      },

      keyframes: {
        "slide-in": {
          "0%": {
            transform: "translateX(120%)",
          },
          "100%": {
            transform: "translateX(0%)",
          },
        },
      },

      animation: {
        "slide-in": "slide-in 0.5s ease-out",
      },
    },
  },

  plugins: [forms],
};
