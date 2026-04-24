import { motion } from "framer-motion";
import { useEffect, useState } from "react";
import { Home, User, Briefcase, FolderKanban, Wrench, Mail, type LucideIcon } from "lucide-react";

const links: { id: string; label: string; Icon: LucideIcon }[] = [
  { id: "home", label: "home", Icon: Home },
  { id: "about", label: "about", Icon: User },
  { id: "experience", label: "journey", Icon: Briefcase },
  { id: "projects", label: "projects", Icon: FolderKanban },
  { id: "skills", label: "skills", Icon: Wrench },
  { id: "contact", label: "contact", Icon: Mail },
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
      className="fixed left-0 right-0 top-0 z-50 w-full lg:left-1/2 lg:right-auto lg:top-4 lg:w-auto lg:-translate-x-1/2"
    >
      <div className="glass flex items-center justify-around gap-0 rounded-none px-2 py-2 shadow-lg lg:justify-center lg:gap-1 lg:rounded-full lg:px-2 lg:py-2">
        <a
          href="#home"
          className="mr-2 hidden rounded-full bg-gradient-primary px-3 py-1.5 text-xs font-bold text-primary-foreground lg:block"
        >
          SB
        </a>
        {links.map((l) => {
          const { Icon } = l;
          return (
            <a
              key={l.id}
              href={`#${l.id}`}
              onClick={() => setActive(l.id)}
              aria-label={l.label}
              className={`relative flex items-center justify-center rounded-full p-2 font-mono text-xs transition-colors lg:px-3 lg:py-1.5 ${
                active === l.id ? "text-primary" : "text-muted-foreground hover:text-foreground"
              }`}
            >
              {active === l.id && (
                <motion.span
                  layoutId="nav-pill"
                  className="absolute inset-0 rounded-full bg-primary/10 ring-1 ring-primary/40"
                  transition={{ type: "spring", stiffness: 350, damping: 30 }}
                />
              )}
              <Icon className="relative h-5 w-5 lg:hidden" />
              <span className="relative hidden lg:inline">{l.label}</span>
            </a>
          );
        })}
      </div>
    </motion.nav>
  );
};

export default Navbar;
