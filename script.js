document.addEventListener("DOMContentLoaded", () => {
  const el = document.querySelector(".glass");
  el.style.opacity = "0";
  el.style.transform = "translateY(20px)";

  requestAnimationFrame(() => {
    el.style.transition = "all .6s ease";
    el.style.opacity = "1";
    el.style.transform = "none";
  });
});