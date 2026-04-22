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
    const updateActiveSection = () => {
      const anchorLine = window.innerHeight * 0.35;
      const visibleSection = links
        .map((link) => document.getElementById(link.id))
        .filter(Boolean)
        .find((section) => {
          const rect = section!.getBoundingClientRect();
          return rect.top <= anchorLine && rect.bottom >= anchorLine;
        });

      if (visibleSection) setActive(visibleSection.id);
    };

    updateActiveSection();
    window.addEventListener("scroll", updateActiveSection, { passive: true });
    window.addEventListener("resize", updateActiveSection);

    return () => {
      window.removeEventListener("scroll", updateActiveSection);
      window.removeEventListener("resize", updateActiveSection);
    };
  }, []);

  return (
    <motion.nav
      initial={{ y: -30, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }}
      className="fixed left-1/2 top-3 z-50 w-[calc(100vw-1rem)] -translate-x-1/2 sm:top-4 sm:w-auto"
    >
      <div className="glass flex items-center justify-center gap-0 rounded-full px-1 py-1.5 shadow-lg sm:gap-1 sm:px-2 sm:py-2">
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
            onClick={() => setActive(l.id)}
            className={`relative rounded-full px-2 py-1.5 font-mono text-[10px] transition-colors sm:px-3 sm:text-xs ${active === l.id ? "text-primary" : "text-muted-foreground hover:text-foreground"
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
