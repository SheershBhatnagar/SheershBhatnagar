import { motion } from "framer-motion";
import SectionHeading from "./SectionHeading";

const groups = [
  { name: "Mobile", items: ["Flutter", "Dart", "Android", "iOS"] },
  { name: "Backend", items: ["Python", "FastAPI", "Flask", "REST APIs", "Node.js"] },
  { name: "Data", items: ["PostgreSQL", "MySQL", "MongoDB", "Redis", "Firestore"] },
  { name: "Cloud", items: ["AWS (EC2, IAM)", "GCP", "Azure", "Firebase"] },
  { name: "DevOps", items: ["Docker", "GitHub Actions", "Nginx", "DNS Mgmt"] },
  { name: "Other", items: ["Git", "IoT", "Linux", "GenAI"] },
];

const marquee = ["Flutter", "Firebase", "AWS", "Docker", "Python", "PostgreSQL", "FastAPI", "Redis", "MongoDB", "GitHub Actions", "Nginx", "GCP", "Azure", "Dart", "REST API", "IoT"];

const Skills = () => {
  return (
    <section id="skills" className="relative py-28">
      <div className="container">
        <SectionHeading index="04" title="Tech stack" subtitle="Tools I reach for daily." />

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {groups.map((g, i) => (
            <motion.div
              key={g.name}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true, margin: "-50px" }}
              transition={{ duration: 0.5, delay: i * 0.07 }}
              className="glass card-tilt rounded-2xl p-5"
            >
              <div className="mb-3 flex items-center gap-2 font-mono text-xs">
                <span className="text-secondary">#</span>
                <span className="text-primary">{g.name.toLowerCase()}</span>
              </div>
              <div className="flex flex-wrap gap-2">
                {g.items.map((it) => (
                  <span key={it} className="rounded-lg border border-border bg-muted/30 px-2.5 py-1 text-xs text-foreground/90 transition-colors hover:border-primary hover:text-primary">
                    {it}
                  </span>
                ))}
              </div>
            </motion.div>
          ))}
        </div>
      </div>

      {/* Marquee */}
      <div className="relative mt-16 overflow-hidden border-y border-border bg-muted/20 py-6">
        <div className="marquee flex w-max gap-12 font-display text-3xl font-bold text-muted-foreground/40 sm:text-4xl">
          {[...marquee, ...marquee].map((m, i) => (
            <span key={i} className="flex items-center gap-12 whitespace-nowrap">
              {m}
              <span className="text-primary">✦</span>
            </span>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Skills;
