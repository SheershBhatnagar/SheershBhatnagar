import { motion } from "framer-motion";
import { Trophy } from "lucide-react";
import SectionHeading from "./SectionHeading";

const awards = [
  {
    title: "Hackfinity 1.0",
    org: "SRM University",
    date: "Nov 2024",
    desc: "Built Gesturify with a 4-person team — converting sign-language hand gestures into words & letters in real time.",
  },
  {
    title: "Won Ideathon 3.0",
    org: "Amity University Rajasthan",
    date: "May 2022",
    desc: "Pitched and won with the concept of an online cloud-sync application.",
  },
];

const Awards = () => (
  <section className="relative py-20">
    <div className="container">
      <SectionHeading index="05" title="Wins along the way" />
      <div className="grid gap-6 md:grid-cols-2">
        {awards.map((a, i) => (
          <motion.div
            key={a.title}
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.5, delay: i * 0.1 }}
            className="glass card-tilt rounded-2xl p-6"
          >
            <div className="mb-3 flex items-center gap-3">
              <span className="grid h-10 w-10 place-items-center rounded-xl bg-gradient-primary text-primary-foreground">
                <Trophy className="h-5 w-5" />
              </span>
              <div>
                <h3 className="font-display text-lg font-semibold">{a.title}</h3>
                <p className="font-mono text-xs text-secondary">
                  {a.org} · {a.date}
                </p>
              </div>
            </div>
            <p className="text-sm text-muted-foreground">{a.desc}</p>
          </motion.div>
        ))}
      </div>
    </div>
  </section>
);

export default Awards;
