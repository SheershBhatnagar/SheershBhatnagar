import { motion, useMotionValue, useSpring, useTransform } from "framer-motion";
import { Apple, ArrowRight, Github, Play } from "lucide-react";
import { useRef } from "react";
import { Link, useNavigate } from "react-router-dom";
import SectionHeading from "./SectionHeading";
import { projects } from "@/data/projects";

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
  const navigate = useNavigate();

  return (
    <section id="projects" className="relative py-28">
      <div className="container">
        <SectionHeading index="03" title="Selected projects" subtitle="Things I've shipped & built." />

        <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
          {projects.map((p, i) => {
            const goToCase = () => navigate(`/projects/${p.slug}`);
            return (
              <motion.div
                key={p.slug}
                initial={{ opacity: 0, y: 40 }}
                whileInView={{ opacity: 1, y: 0 }}
                viewport={{ once: true, margin: "-60px" }}
                transition={{ duration: 0.6, delay: i * 0.1 }}
                style={{ perspective: 1000 }}
              >
                <TiltCard className="group relative h-full">
                  <div className={`absolute -inset-px rounded-2xl bg-gradient-to-br ${p.accent} opacity-0 blur-md transition-opacity duration-500 group-hover:opacity-60`} />
                  <div
                    role="link"
                    tabIndex={0}
                    aria-label={`Open case study for ${p.name}`}
                    onClick={goToCase}
                    onKeyDown={(e) => {
                      if (e.key === "Enter" || e.key === " ") {
                        e.preventDefault();
                        goToCase();
                      }
                    }}
                    className="glass relative flex h-full cursor-pointer flex-col rounded-2xl p-6 transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary"
                  >
                    <div className="flex items-start justify-between gap-3">
                      <h3 className="font-display text-xl font-semibold">{p.name}</h3>
                      <div
                        className="flex flex-none items-center gap-3 pt-1.5"
                        onClick={(e) => e.stopPropagation()}
                      >
                        {p.links.github && (
                          <a
                            href={p.links.github}
                            target="_blank"
                            rel="noreferrer"
                            aria-label={`${p.name} on GitHub`}
                            className="text-muted-foreground transition-colors hover:text-primary"
                          >
                            <Github className="h-4 w-4" />
                          </a>
                        )}
                        {p.links.playStore && (
                          <a
                            href={p.links.playStore}
                            target="_blank"
                            rel="noreferrer"
                            aria-label={`${p.name} on Play Store`}
                            className="text-muted-foreground transition-colors hover:text-primary"
                          >
                            <Play className="h-4 w-4" />
                          </a>
                        )}
                        {p.links.appStore && (
                          <a
                            href={p.links.appStore}
                            target="_blank"
                            rel="noreferrer"
                            aria-label={`${p.name} on App Store`}
                            className="text-muted-foreground transition-colors hover:text-primary"
                          >
                            <Apple className="h-4 w-4" />
                          </a>
                        )}
                      </div>
                    </div>
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
                      <div className="mt-4 flex items-center justify-between">
                        <div className="font-mono text-[11px] text-muted-foreground">{p.period}</div>
                        <Link
                          to={`/projects/${p.slug}`}
                          onClick={(e) => e.stopPropagation()}
                          className="group/link inline-flex items-center gap-1 font-mono text-[11px] text-primary transition-colors hover:text-primary-glow"
                        >
                          case study
                          <ArrowRight className="h-3 w-3 transition-transform group-hover/link:translate-x-0.5" />
                        </Link>
                      </div>
                    </div>
                  </div>
                </TiltCard>
              </motion.div>
            );
          })}
        </div>
      </div>
    </section>
  );
};

export default Projects;
