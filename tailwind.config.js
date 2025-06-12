/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./src/**/*.{html,js,jsx,ts,tsx,antlers.html}", "./*.html"],
    theme: {
        extend: {
            colors: {
                primary: "#004f79",
            },
        },
    },
    plugins: {
        tailwindcss: {},
        autoprefixer: {},
    },
};
