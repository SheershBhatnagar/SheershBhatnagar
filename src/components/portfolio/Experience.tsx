import { motion } from "framer-motion";
import SectionHeading from "./SectionHeading";
import { Briefcase, GraduationCap } from "lucide-react";

type Item = {
  type: "work" | "edu";
  title: string;
  org: string;
  period: string;
  location: string;
  points: string[];
  tags: string[];
};

const items: Item[] = [
  {
    type: "work",
    title: "Full Stack Flutter Developer",
    org: "Decube Innovation Labs",
    period: "November 2024 — Present",
    location: "Remote",
    points: [
      "Designed & deployed a production-grade Android app with Flutter + Firebase, integrating real-time engagement via FCM and Analytics.",
      "Architected secure AWS environments (EC2, IAM, Security Groups) with automated AWS Backup Plans and DNS configuration.",
      "Optimized deployment with Docker, Nginx Proxy Manager, and CI/CD pipelines via GitHub Actions.",
    ],
    tags: ["Flutter", "Firebase", "AWS", "Docker", "CI/CD"],
  },
  {
    type: "work",
    title: "Full Stack Flutter Developer",
    org: "AuraVita",
    period: "November 2024 — Present",
    location: "Remote",
    points: [
      "Designed & deployed a production-grade Android app with Flutter + Firebase, integrating real-time engagement via FCM and Analytics.",
      "Architected secure AWS environments (EC2, IAM, Security Groups) with automated AWS Backup Plans and DNS configuration.",
      "Optimized deployment with Docker, Nginx Proxy Manager, and CI/CD pipelines via GitHub Actions.",
    ],
    tags: ["Flutter", "Firebase", "AWS", "Docker", "CI/CD"],
  },
  {
    type: "edu",
    title: "Master of Computer Applications in Generative AI",
    org: "SRM University, Chennai",
    period: "July 2024 — April 2026",
    location: "CGPA 9.16/10",
    points: ["Specializing in applied AI, deep learning, and modern app architecture."],
    tags: ["GenAI", "ML"],
  },
  {
    type: "work",
    title: "PHP Web Developer Intern",
    org: "Suvidha Foundation",
    period: "November 2023 — December 2023",
    location: "Remote",
    points: [
      "Made a PHP website to distribute course certificates to students associated with their organisation via email.",
      "Foundation guided to use a pre-built template with Bootstrap/Tailwind",
    ],
    tags: ["HTML", "CSS", "JavaScript", "BootStrap", "PHP"],
  },
  {
    type: "work",
    title: "Web Developer Intern",
    org: "Navyug Think India Foundation",
    period: "June 2022 — July 2022",
    location: "Remote",
    points: [
      "Completed training and internship on a news website project, implemented a modular CSS architecture with core HTML to ensure code maintainability and scalability for a news website project.",
    ],
    tags: ["HTML", "CSS", "JavaScript"],
  },
  {
    type: "edu",
    title: "Bachelor of Computer Applications",
    org: "Amity University Rajasthan, Jaipur",
    period: "September 2020 — May 2023",
    location: "CGPA 7.93/10",
    points: ["Foundation in CS, web & mobile development, databases."],
    tags: ["CS Fundamentals"],
  },
  {
    type: "edu",
    title: "Senior Secondary Education",
    org: "Seedling Modern High School, Jaipur",
    period: "March 2019 — March 2020",
    location: "63.5%",
    points: ["Completed senior secondary education from Seedling Modern High School in year 2020."],
    tags: ["12th", "PCM/IP"],
  },
  {
    type: "edu",
    title: "Secondary Education",
    org: "Seedling Modern High School, Jaipur",
    period: "March 2017 — March 2018",
    location: "70.5%",
    points: ["Completed secondary education from Seedling Modern High School in year 2018."],
    tags: ["10th"],
  },
];

const MONTHS: Record<string, number> = {
  january: 0, february: 1, march: 2, april: 3, may: 4, june: 5,
  july: 6, august: 7, september: 8, october: 9, november: 10, december: 11,
};

const parseDate = (s: string): Date => {
  const trimmed = s.trim().toLowerCase();
  if (trimmed === "present" || trimmed === "current") return new Date(8640000000000000);
  const parts = trimmed.split(/\s+/);
  if (parts.length === 2) {
    const [m, y] = parts;
    if (m in MONTHS) return new Date(parseInt(y, 10), MONTHS[m], 1);
  }
  // fallback: just year
  const yr = parseInt(trimmed, 10);
  if (!isNaN(yr)) return new Date(yr, 0, 1);
  return new Date(0);
};

const parsePeriod = (period: string): { start: Date; end: Date } => {
  const [a, b] = period.split(/—|–|-/).map((s) => s.trim());
  const start = parseDate(a);
  const end = b ? parseDate(b) : start;
  return { start, end };
};

// Items are listed newest-first. Assign sides so that overlapping items end up
// on opposite sides of the timeline. Default alternation is preserved when
// there's no overlap with the most recent item on the proposed side.
const assignSides = (list: Item[]): ("left" | "right")[] => {
  const ranges = list.map((it) => parsePeriod(it.period));
  const sides: ("left" | "right")[] = [];
  // Track the earliest start seen so far on each side (since list is newest-first,
  // an overlap with that side means the new item's end >= that side's earliest start).
  let earliestStart: Record<"left" | "right", Date | null> = { left: null, right: null };

  list.forEach((_, i) => {
    const { start, end } = ranges[i];
    const proposed: "left" | "right" = i % 2 === 0 ? "right" : "left";
    const other: "left" | "right" = proposed === "right" ? "left" : "right";

    const overlapsWith = (side: "left" | "right") => {
      const es = earliestStart[side];
      if (!es) return false;
      // overlap if this item's end >= side's earliest start
      return end.getTime() >= es.getTime();
    };

    let chosen: "left" | "right" = proposed;
    if (overlapsWith(proposed) && !overlapsWith(other)) {
      chosen = other;
    }

    sides.push(chosen);
    const cur = earliestStart[chosen];
    if (!cur || start.getTime() < cur.getTime()) {
      earliestStart[chosen] = start;
    }
  });

  return sides;
};

const Experience = () => {
  const sides = assignSides(items);

  return (
    <section id="experience" className="relative py-28">
      <div className="container">
        <SectionHeading index="02" title="Experience & Education" subtitle="The journey so far." />

        <div className="relative">
          {/* line */}
          <div className="absolute left-[19px] top-2 h-[calc(100%-1rem)] w-px bg-gradient-to-b from-primary via-secondary to-transparent md:left-1/2" />

          <div className="space-y-10">
            {items.map((it, i) => {
              const isLeft = sides[i] === "left";
              return (
                <motion.div
                  key={i}
                  initial={{ opacity: 0, y: 30 }}
                  whileInView={{ opacity: 1, y: 0 }}
                  viewport={{ once: true, margin: "-60px" }}
                  transition={{ duration: 0.5, delay: i * 0.05 }}
                  className={`relative grid gap-4 pl-12 md:grid-cols-2 md:gap-12 md:pl-0 ${
                    isLeft ? "md:[&>*:first-child]:order-2" : ""
                  }`}
                >
                  {/* dot */}
                  <div className="absolute left-[12px] top-3 z-10 flex h-4 w-4 items-center justify-center rounded-full bg-background ring-2 ring-primary md:left-1/2 md:-translate-x-1/2">
                    <span className="h-2 w-2 rounded-full bg-primary animate-pulse" />
                  </div>

                  <div className={`md:text-right ${isLeft ? "md:text-left" : ""}`}>
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
              );
            })}
          </div>
        </div>
      </div>
    </section>
  );
};

export default Experience;
