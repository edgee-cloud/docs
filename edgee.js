let currentUrl = location.href;
const checkPageTransition = () => {
    requestAnimationFrame(() => {
        if (currentUrl !== location.href) {
            if (window.edgee && typeof window.edgee.page === 'function') {
                window.edgee.page();
            }
        }
        currentUrl = location.href;
    }, true);
};


document.body.addEventListener("click", checkPageTransition);
document.body.addEventListener("keyup", e => {
    if (e.code === "Enter" || e.code === "Space") checkPageTransition()
});