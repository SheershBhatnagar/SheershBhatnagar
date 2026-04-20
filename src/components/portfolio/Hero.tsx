import { motion } from "framer-motion";
import { useEffect, useState } from "react";
import { ArrowDown, Github, Linkedin, Mail } from "lucide-react";
import portrait from "@/assets/sheersh-portrait.jpg";

const roles = ["Full Stack Flutter Developer", "Mobile App Engineer", "Cloud & DevOps Tinkerer"];

const Hero = () => {
  const [text, setText] = useState("");
  const [roleIdx, setRoleIdx] = useState(0);
  const [del, setDel] = useState(false);

  useEffect(() => {
    const current = roles[roleIdx];
    const speed = del ? 40 : 80;
    const t = setTimeout(() => {
      if (!del && text === current) {
        setTimeout(() => setDel(true), 1600);
        return;
      }
      if (del && text === "") {
        setDel(false);
        setRoleIdx((i) => (i + 1) % roles.length);
        return;
      }
      setText(del ? current.slice(0, text.length - 1) : current.slice(0, text.length + 1));
    }, speed);
    return () => clearTimeout(t);
  }, [text, del, roleIdx]);

  return (
    <section id="home" className="relative flex min-h-screen items-center overflow-hidden pt-24">
      {/* aurora blobs */}
      <div className="pointer-events-none absolute inset-0 -z-10">
        <div className="absolute left-[-10%] top-[10%] h-[400px] w-[400px] rounded-full bg-primary/20 blur-3xl animate-aurora" />
        <div className="absolute right-[-5%] top-[30%] h-[500px] w-[500px] rounded-full bg-secondary/20 blur-3xl animate-aurora" style={{ animationDelay: "5s" }} />
        <div className="grid-bg absolute inset-0" />
      </div>

      <div className="container grid items-center gap-12 lg:grid-cols-[1.3fr_1fr]">
        <div>
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6 }}
            className="mb-6 inline-flex items-center gap-2 rounded-full border border-primary/30 bg-primary/5 px-3 py-1 font-mono text-xs text-primary"
          >
            <span className="relative flex h-2 w-2">
              <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-primary opacity-75" />
              <span className="relative inline-flex h-2 w-2 rounded-full bg-primary" />
            </span>
            available for opportunities
          </motion.div>

          <motion.h1
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.7, delay: 0.1 }}
            className="font-display text-5xl font-bold leading-[1.05] tracking-tight sm:text-6xl lg:text-7xl"
          >
            Hi, I'm <span className="text-gradient">Sheersh</span>
            <br />
            <span className="text-foreground/90">Bhatnagar</span>
          </motion.h1>

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6, delay: 0.3 }}
            className="mt-6 font-mono text-lg text-muted-foreground sm:text-xl"
          >
            <span className="text-secondary">~/</span>
            <span className="text-foreground cursor-blink">{text}</span>
          </motion.div>

          <motion.p
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 0.6, delay: 0.5 }}
            className="mt-6 max-w-xl text-base text-muted-foreground sm:text-lg"
          >
            I design and ship production-grade mobile apps with{" "}
            <span className="text-primary">Flutter</span>, wire them up to{" "}
            <span className="text-secondary">Firebase</span> &{" "}
            <span className="text-secondary">AWS</span>, and automate the boring parts with Docker + GitHub Actions.
          </motion.p>

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6, delay: 0.7 }}
            className="mt-8 flex flex-wrap items-center gap-4"
          >
            <a
              href="#projects"
              className="group relative inline-flex items-center gap-2 overflow-hidden rounded-full bg-gradient-primary px-6 py-3 font-mono text-sm font-semibold text-primary-foreground shadow-lg transition-transform hover:scale-105 animate-pulse-glow"
            >
              view my work
              <ArrowDown className="h-4 w-4 transition-transform group-hover:translate-y-0.5" />
            </a>
            <a
              href="#contact"
              className="rounded-full border border-border bg-card/50 px-6 py-3 font-mono text-sm font-semibold text-foreground transition-colors hover:border-primary hover:text-primary"
            >
              get in touch
            </a>
            <div className="flex items-center gap-3 pl-2">
              <a href="https://github.com/SheershBhatnagar" target="_blank" rel="noreferrer" aria-label="GitHub" className="text-muted-foreground transition-colors hover:text-primary">
                <Github className="h-5 w-5" />
              </a>
              <a href="https://linkedin.com/in/sheershbhatnagar" target="_blank" rel="noreferrer" aria-label="LinkedIn" className="text-muted-foreground transition-colors hover:text-primary">
                <Linkedin className="h-5 w-5" />
              </a>
              <a href="mailto:sheershbhatnagar2@zohomail.in" aria-label="Email" className="text-muted-foreground transition-colors hover:text-primary">
                <Mail className="h-5 w-5" />
              </a>
            </div>
          </motion.div>
        </div>

        {/* Portrait */}
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ duration: 0.8, delay: 0.4 }}
          className="relative mx-auto w-full max-w-sm"
        >
          <div className="absolute inset-0 -z-10 rounded-full bg-gradient-primary opacity-30 blur-3xl animate-pulse-glow" />
          <div className="animate-float relative">
            {/* code badge top */}
            <div className="glass absolute -left-6 -top-4 z-10 hidden rounded-lg px-3 py-2 font-mono text-xs sm:block">
              <span className="text-secondary">const</span>{" "}
              <span className="text-primary">dev</span> = <span className="text-terminal">"sheersh"</span>;
            </div>
            <div className="glass absolute -right-4 bottom-6 z-10 hidden rounded-lg px-3 py-2 font-mono text-xs sm:block">
              <span className="text-secondary">@</span>flutter <span className="text-muted-foreground">·</span> <span className="text-primary">@aws</span>
            </div>
            <div className="relative overflow-hidden rounded-3xl border border-border bg-card p-2">
              <div className="absolute inset-0 rounded-3xl bg-gradient-primary opacity-50 blur-2xl" />
              <img
                src={portrait}
                alt="Sheersh Bhatnagar"
                className="relative h-full w-full rounded-2xl object-cover"
              />
            </div>
          </div>
        </motion.div>
      </div>

      {/* scroll hint */}
      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1.2 }}
        className="absolute bottom-6 left-1/2 -translate-x-1/2"
      >
        <div className="flex flex-col items-center gap-2 font-mono text-xs text-muted-foreground">
          <span>scroll</span>
          <motion.div
            animate={{ y: [0, 8, 0] }}
            transition={{ repeat: Infinity, duration: 1.6 }}
            className="h-8 w-[2px] bg-gradient-to-b from-primary to-transparent"
          />
        </div>
      </motion.div>
    </section>
  );
};

export default Hero;
