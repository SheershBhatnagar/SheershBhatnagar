import { motion } from "framer-motion";
import { useEffect, useState } from "react";

const links = [
  { id: "home", label: "home" },
  { id: "about", label: "about" },
  { id: "experience", label: "journey" },
  { id: "projects", label: "projects" },
  { id: "skills", label: "skills" },
  { id: "contact", label: "contact" },
];

const Navbar = () => {
  const [active, setActive] = useState("home");

  useEffect(() => {
    const obs = new IntersectionObserver(
      (entries) => {
        entries.forEach((e) => {
          if (e.isIntersecting) setActive(e.target.id);
        });
      },
      { rootMargin: "-40% 0px -55% 0px" }
    );
    links.forEach((l) => {
      const el = document.getElementById(l.id);
      if (el) obs.observe(el);
    });
    return () => obs.disconnect();
  }, []);

  return (
    <motion.nav
      initial={{ y: -30, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }}
      className="fixed left-1/2 top-4 z-50 -translate-x-1/2"
    >
      <div className="glass flex items-center gap-1 rounded-full px-2 py-2 shadow-lg">
        <a
          href="#home"
          className="mr-2 hidden rounded-full bg-gradient-primary px-3 py-1.5 text-xs font-bold text-primary-foreground sm:block"
        >
          SB
        </a>
        {links.map((l) => (
          <a
            key={l.id}
            href={`#${l.id}`}
            className={`relative rounded-full px-3 py-1.5 font-mono text-xs transition-colors ${active === l.id ? "text-primary" : "text-muted-foreground hover:text-foreground"
              }`}
          >
            {active === l.id && (
              <motion.span
                layoutId="nav-pill"
                className="absolute inset-0 rounded-full bg-primary/10 ring-1 ring-primary/40"
                transition={{ type: "spring", stiffness: 350, damping: 30 }}
              />
            )}
            <span className="relative">{l.label}</span>
          </a>
        ))}
      </div>
    </motion.nav>
  );
};

export default Navbar;
