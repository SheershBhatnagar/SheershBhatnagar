import { motion, useMotionValue, useSpring, useTransform } from "framer-motion";
import { Github } from "lucide-react";
import { useRef } from "react";
import SectionHeading from "./SectionHeading";

const projects = [
  {
    name: "Skiá Coffee App",
    tag: "Flutter · Firebase",
    period: "December 2024 — Present",
    description: "A polished iOS & Android e-commerce app for a coffee brand. Auth, Firestore-backed catalog, payment via Cashfree, and CI/CD via GitHub Actions.",
    stack: ["Flutter", "Firebase", "Cashfree", "Docker", "AWS", "GitHub Actions"],
    accent: "from-primary to-secondary",
    github: null,
  },
  {
    name: "Gesturify",
    tag: "Flutter · Flask · Hackfinity 1.0",
    period: "November 2024 — December 2024",
    description: "Sign-language interpreter that converts hand gestures into letters & words in real time. Led a 4-person team building Flutter app + Flask ML backend.",
    stack: ["Flutter", "Flask", "Computer Vision", "REST API"],
    accent: "from-secondary to-accent",
    github: "https://github.com/Pratyushshrivas/Gesturify",
  },
  {
    name: "Weather App",
    tag: "Flutter · OpenWeather API",
    period: "October 2023",
    description: "Lightweight cross-platform weather app with location-based real-time forecasts via OpenWeatherAPI.",
    stack: ["Flutter", "REST API", "Geolocation"],
    accent: "from-primary to-accent",
    github: "https://github.com/SheershBhatnagar/Weather-App",
  },
];

const TiltCard = ({ children, className = "" }: { children: React.ReactNode; className?: string }) => {
  const ref = useRef<HTMLDivElement>(null);
  const x = useMotionValue(0);
  const y = useMotionValue(0);
  const rx = useSpring(useTransform(y, [-50, 50], [8, -8]), { stiffness: 200, damping: 20 });
  const ry = useSpring(useTransform(x, [-50, 50], [-8, 8]), { stiffness: 200, damping: 20 });

  const onMove = (e: React.MouseEvent) => {
    const r = ref.current?.getBoundingClientRect();
    if (!r) return;
    x.set(e.clientX - r.left - r.width / 2);
    y.set(e.clientY - r.top - r.height / 2);
  };
  const onLeave = () => {
    x.set(0);
    y.set(0);
  };

  return (
    <motion.div
      ref={ref}
      onMouseMove={onMove}
      onMouseLeave={onLeave}
      style={{ rotateX: rx, rotateY: ry, transformStyle: "preserve-3d" }}
      className={className}
    >
      {children}
    </motion.div>
  );
};

const Projects = () => {
  return (
    <section id="projects" className="relative py-28">
      <div className="container">
        <SectionHeading index="03" title="Selected projects" subtitle="Things I've shipped & built." />

        <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
          {projects.map((p, i) => (
            <motion.div
              key={p.name}
              initial={{ opacity: 0, y: 40 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true, margin: "-60px" }}
              transition={{ duration: 0.6, delay: i * 0.1 }}
              style={{ perspective: 1000 }}
            >
              <TiltCard className="group relative h-full">
                <div className={`absolute -inset-px rounded-2xl bg-gradient-to-br ${p.accent} opacity-0 blur-md transition-opacity duration-500 group-hover:opacity-60`} />
                <div className="glass relative flex h-full flex-col rounded-2xl p-6">
                  <div className="mb-4 flex items-start justify-between">
                    <span className="font-mono text-xs text-muted-foreground">0{i + 1}</span>
                    <div className="flex gap-2">
                      {p.github ? (
                        <a
                          href={p.github}
                          target="_blank"
                          rel="noreferrer"
                          aria-label={`${p.name} on GitHub`}
                          className="text-muted-foreground transition-colors hover:text-primary"
                        >
                          <Github className="h-4 w-4" />
                        </a>
                      ) : (
                        <span
                          title="Link not available"
                          className="text-muted-foreground/30"
                        >
                          <Github className="h-4 w-4" />
                        </span>
                      )}
                    </div>
                  </div>

                  <h3 className="font-display text-xl font-semibold">{p.name}</h3>
                  <p className="mt-1 font-mono text-xs text-primary">{p.tag}</p>
                  <p className="mt-3 text-sm text-muted-foreground">{p.description}</p>

                  <div className="mt-auto pt-5">
                    <div className="flex flex-wrap gap-1.5">
                      {p.stack.map((s) => (
                        <span
                          key={s}
                          className="rounded-md border border-border bg-muted/40 px-2 py-0.5 font-mono text-[10px] text-foreground/80"
                        >
                          {s}
                        </span>
                      ))}
                    </div>
                    <div className="mt-4 font-mono text-[11px] text-muted-foreground">{p.period}</div>
                  </div>
                </div>
              </TiltCard>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Projects;
