document.addEventListener("DOMContentLoaded", () => {
  const cards = document.querySelectorAll(".tech-card");

  const revealCards = new IntersectionObserver(
    (entries, observer) => {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) return;

        const card = entry.target;
        card.classList.add("is-visible");
        observer.unobserve(card);
      });
    },
    {
      threshold: 0.2,
    },
  );

  cards.forEach((card, index) => {
    const accent = card.dataset.accent ?? "#c084fc";
    card.style.setProperty("--card-accent", accent);
    card.style.setProperty("--delay", `${index * 70}ms`);
    revealCards.observe(card);
  });
});
