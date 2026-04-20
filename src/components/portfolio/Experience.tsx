import { motion } from "framer-motion";
import SectionHeading from "./SectionHeading";
import { Briefcase, GraduationCap } from "lucide-react";

const items = [
  {
    type: "work" as const,
    title: "Full Stack Flutter Developer",
    org: "Decube Innovation Labs",
    period: "Nov 2024 — Present",
    location: "Remote",
    points: [
      "Designed & deployed a production-grade Android app with Flutter + Firebase, integrating real-time engagement via FCM and Analytics.",
      "Architected secure AWS environments (EC2, IAM, Security Groups) with automated AWS Backup Plans and DNS configuration.",
      "Optimized deployment with Docker, Nginx Proxy Manager, and CI/CD pipelines via GitHub Actions.",
    ],
    tags: ["Flutter", "Firebase", "AWS", "Docker", "CI/CD"],
  },
  {
    type: "edu" as const,
    title: "MCA in Generative AI",
    org: "SRM University, Chennai",
    period: "Jul 2024 — Present",
    location: "CGPA 9.16/10",
    points: ["Specializing in applied AI, deep learning, and modern app architecture."],
    tags: ["GenAI", "ML"],
  },
  {
    type: "edu" as const,
    title: "BCA",
    org: "Amity University Rajasthan, Jaipur",
    period: "Sep 2020 — May 2023",
    location: "CGPA 7.93/10",
    points: ["Foundation in CS, web & mobile development, databases."],
    tags: ["CS Fundamentals"],
  },
];

const Experience = () => {
  return (
    <section id="experience" className="relative py-28">
      <div className="container">
        <SectionHeading index="02" title="Experience & Education" subtitle="The path so far." />

        <div className="relative">
          {/* line */}
          <div className="absolute left-[19px] top-2 h-[calc(100%-1rem)] w-px bg-gradient-to-b from-primary via-secondary to-transparent md:left-1/2" />

          <div className="space-y-10">
            {items.map((it, i) => (
              <motion.div
                key={i}
                initial={{ opacity: 0, y: 30 }}
                whileInView={{ opacity: 1, y: 0 }}
                viewport={{ once: true, margin: "-60px" }}
                transition={{ duration: 0.5, delay: i * 0.05 }}
                className={`relative grid gap-4 pl-12 md:grid-cols-2 md:gap-12 md:pl-0 ${
                  i % 2 ? "md:[&>*:first-child]:order-2" : ""
                }`}
              >
                {/* dot */}
                <div className="absolute left-[12px] top-3 z-10 flex h-4 w-4 items-center justify-center rounded-full bg-background ring-2 ring-primary md:left-1/2 md:-translate-x-1/2">
                  <span className="h-2 w-2 rounded-full bg-primary animate-pulse" />
                </div>

                <div className={`md:text-right ${i % 2 ? "md:text-left" : ""}`}>
                  <div className="font-mono text-xs text-primary">{it.period}</div>
                  <div className="mt-1 text-sm text-muted-foreground">{it.location}</div>
                </div>

                <div className="glass card-tilt rounded-2xl p-5">
                  <div className="mb-3 flex items-center gap-2">
                    <span className="grid h-8 w-8 place-items-center rounded-lg bg-primary/10 text-primary">
                      {it.type === "work" ? <Briefcase className="h-4 w-4" /> : <GraduationCap className="h-4 w-4" />}
                    </span>
                    <div>
                      <h3 className="font-display text-lg font-semibold leading-tight">{it.title}</h3>
                      <p className="font-mono text-xs text-secondary">{it.org}</p>
                    </div>
                  </div>
                  <ul className="space-y-2 text-sm text-muted-foreground">
                    {it.points.map((p, j) => (
                      <li key={j} className="flex gap-2">
                        <span className="mt-2 h-1 w-1 flex-none rounded-full bg-primary" />
                        <span>{p}</span>
                      </li>
                    ))}
                  </ul>
                  <div className="mt-4 flex flex-wrap gap-1.5">
                    {it.tags.map((t) => (
                      <span key={t} className="rounded-full border border-border bg-muted/30 px-2 py-0.5 font-mono text-[10px] text-muted-foreground">
                        {t}
                      </span>
                    ))}
                  </div>
                </div>
              </motion.div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

export default Experience;
