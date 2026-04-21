import { motion } from "framer-motion";
import { Apple, ArrowLeft, Github, Play } from "lucide-react";
import { Link, useParams } from "react-router-dom";
import { useEffect } from "react";
import CustomCursor from "@/components/portfolio/CustomCursor";
import { getProject } from "@/data/projects";
import NotFound from "./NotFound";

const ProjectDetail = () => {
  const { slug } = useParams<{ slug: string }>();
  const project = slug ? getProject(slug) : undefined;

  useEffect(() => {
    window.scrollTo(0, 0);
    if (project) document.title = `${project.name} · Sheersh Bhatnagar`;
  }, [project]);

  if (!project) return <NotFound />;

  return (
    <main className="relative min-h-screen overflow-hidden bg-background text-foreground">
      <CustomCursor />

      {/* aurora */}
      <div className="pointer-events-none absolute inset-0 -z-10">
        <div className="absolute left-[-10%] top-[5%] h-[400px] w-[400px] rounded-full bg-primary/15 blur-3xl animate-aurora" />
        <div
          className="absolute right-[-5%] top-[20%] h-[500px] w-[500px] rounded-full bg-secondary/15 blur-3xl animate-aurora"
          style={{ animationDelay: "4s" }}
        />
        <div className="grid-bg absolute inset-0" />
      </div>

      <div className="container max-w-5xl py-16 sm:py-24">
        <Link
          to="/#projects"
          className="group inline-flex items-center gap-2 font-mono text-xs text-muted-foreground transition-colors hover:text-primary"
        >
          <ArrowLeft className="h-3.5 w-3.5 transition-transform group-hover:-translate-x-0.5" />
          back to projects
        </Link>

        {/* Header */}
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
          className="mt-8"
        >
          <p className="font-mono text-xs text-primary">{project.tag}</p>
          <h1 className="mt-3 font-display text-4xl font-bold tracking-tight sm:text-5xl">
            <span className="text-gradient">{project.name}</span>
          </h1>
          <p className="mt-3 max-w-2xl text-base text-muted-foreground sm:text-lg">
            {project.overview}
          </p>

          <div className="mt-6 flex flex-wrap items-center gap-3">
            {project.links.github && (
              <a
                href={project.links.github}
                target="_blank"
                rel="noreferrer"
                className="inline-flex items-center gap-2 rounded-full border border-border bg-card/50 px-4 py-2 font-mono text-xs transition-colors hover:border-primary hover:text-primary"
              >
                <Github className="h-4 w-4" /> GitHub
              </a>
            )}
            {project.links.playStore && (
              <a
                href={project.links.playStore}
                target="_blank"
                rel="noreferrer"
                className="inline-flex items-center gap-2 rounded-full border border-border bg-card/50 px-4 py-2 font-mono text-xs transition-colors hover:border-primary hover:text-primary"
              >
                <Play className="h-4 w-4" /> Play Store
              </a>
            )}
            {project.links.appStore && (
              <a
                href={project.links.appStore}
                target="_blank"
                rel="noreferrer"
                className="inline-flex items-center gap-2 rounded-full border border-border bg-card/50 px-4 py-2 font-mono text-xs transition-colors hover:border-primary hover:text-primary"
              >
                <Apple className="h-4 w-4" /> App Store
              </a>
            )}
          </div>
        </motion.div>

        {/* Meta grid */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.15 }}
          className="mt-10 grid gap-4 sm:grid-cols-3"
        >
          <div className="glass rounded-2xl p-5">
            <div className="font-mono text-[10px] uppercase tracking-wider text-muted-foreground">
              Role
            </div>
            <div className="mt-1 text-sm text-foreground">{project.role}</div>
          </div>
          <div className="glass rounded-2xl p-5">
            <div className="font-mono text-[10px] uppercase tracking-wider text-muted-foreground">
              Timeline
            </div>
            <div className="mt-1 text-sm text-foreground">{project.period}</div>
          </div>
          <div className="glass rounded-2xl p-5">
            <div className="font-mono text-[10px] uppercase tracking-wider text-muted-foreground">
              Stack
            </div>
            <div className="mt-2 flex flex-wrap gap-1.5">
              {project.stack.map((s) => (
                <span
                  key={s}
                  className="rounded-md border border-border bg-muted/40 px-2 py-0.5 font-mono text-[10px] text-foreground/80"
                >
                  {s}
                </span>
              ))}
            </div>
          </div>
        </motion.div>

        {/* Highlights */}
        <motion.section
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true, margin: "-60px" }}
          transition={{ duration: 0.6 }}
          className="mt-14"
        >
          <h2 className="font-display text-2xl font-semibold">Highlights</h2>
          <div className="mt-5 grid gap-3 sm:grid-cols-2">
            {project.highlights.map((h) => (
              <div
                key={h}
                className="glass flex items-center gap-3 rounded-xl p-4"
              >
                <span className="h-2 w-2 flex-none rounded-full bg-primary" />
                <span className="text-sm text-foreground/90">{h}</span>
              </div>
            ))}
          </div>
        </motion.section>

        {/* Journey */}
        <motion.section
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true, margin: "-60px" }}
          transition={{ duration: 0.6 }}
          className="mt-16"
        >
          <h2 className="font-display text-2xl font-semibold">My journey</h2>
          <div className="relative mt-6">
            <div className="absolute left-[11px] top-2 h-[calc(100%-1rem)] w-px bg-gradient-to-b from-primary via-secondary to-transparent" />
            <div className="space-y-6">
              {project.journey.map((step, i) => (
                <motion.div
                  key={i}
                  initial={{ opacity: 0, x: -20 }}
                  whileInView={{ opacity: 1, x: 0 }}
                  viewport={{ once: true }}
                  transition={{ duration: 0.5, delay: i * 0.05 }}
                  className="relative pl-10"
                >
                  <div className="absolute left-0 top-1 grid h-6 w-6 place-items-center rounded-full bg-background ring-2 ring-primary">
                    <span className="font-mono text-[10px] text-primary">
                      {i + 1}
                    </span>
                  </div>
                  <h3 className="font-display text-lg font-semibold">
                    {step.title}
                  </h3>
                  <p className="mt-1 text-sm text-muted-foreground">
                    {step.body}
                  </p>
                </motion.div>
              ))}
            </div>
          </div>
        </motion.section>

        {/* Learnings */}
        <motion.section
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true, margin: "-60px" }}
          transition={{ duration: 0.6 }}
          className="mt-16"
        >
          <h2 className="font-display text-2xl font-semibold">What I learned</h2>
          <ul className="mt-5 space-y-3">
            {project.learnings.map((l, i) => (
              <li
                key={i}
                className="glass flex gap-3 rounded-xl p-4 text-sm text-foreground/90"
              >
                <span className="mt-1.5 h-1.5 w-1.5 flex-none rounded-full bg-secondary" />
                <span>{l}</span>
              </li>
            ))}
          </ul>
        </motion.section>

        <div className="mt-20 flex justify-between border-t border-border pt-8">
          <Link
            to="/#projects"
            className="font-mono text-xs text-muted-foreground transition-colors hover:text-primary"
          >
            ← all projects
          </Link>
          <Link
            to="/#contact"
            className="font-mono text-xs text-primary transition-colors hover:text-primary-glow"
          >
            get in touch →
          </Link>
        </div>
      </div>
    </main>
  );
};

export default ProjectDetail;
