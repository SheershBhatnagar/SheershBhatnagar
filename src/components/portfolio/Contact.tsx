import { motion } from "framer-motion";
import { Github, Linkedin, Mail, MapPin, Phone } from "lucide-react";
import SectionHeading from "./SectionHeading";

const Contact = () => {
  return (
    <section id="contact" className="relative py-28">
      <div className="container">
        <SectionHeading index="06" title="Let's build something" subtitle="The inbox is open." />

        <div className="grid gap-8 lg:grid-cols-[1.1fr_1fr]">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6 }}
            className="terminal-window overflow-hidden"
          >
            <div className="flex items-center gap-2 border-b border-border px-4 py-3">
              <span className="h-3 w-3 rounded-full bg-destructive/80" />
              <span className="h-3 w-3 rounded-full bg-yellow-500/80" />
              <span className="h-3 w-3 rounded-full bg-terminal/80" />
              <span className="ml-3 font-mono text-xs text-muted-foreground">~/contact</span>
            </div>
            <div className="space-y-3 p-6 font-mono text-sm">
              <p>
                <span className="text-secondary">$</span> whoami
              </p>
              <p className="text-primary">→ sheersh bhatnagar · full-stack flutter developer</p>
              <p className="mt-3">
                <span className="text-secondary">$</span> cat ./reach-out.txt
              </p>
              <ul className="space-y-2 pl-2">
                <li className="flex items-center gap-2">
                  <Mail className="h-4 w-4 text-primary" />
                  <a href="mailto:sheershbhatnagar2@zohomail.in" className="magnetic-link">
                    sheershbhatnagar2@zohomail.in
                  </a>
                </li>
                <li className="flex items-center gap-2">
                  <Phone className="h-4 w-4 text-primary" />
                  <a href="tel:+919119239769" className="magnetic-link">
                    +91 91192 39769
                  </a>
                </li>
                <li className="flex items-center gap-2">
                  <MapPin className="h-4 w-4 text-primary" />
                  <span className="text-muted-foreground">Jaipur, India</span>
                </li>
                <li className="flex items-center gap-2">
                  <Github className="h-4 w-4 text-primary" />
                  <a href="https://github.com/SheershBhatnagar" target="_blank" rel="noreferrer" className="magnetic-link">
                    github.com/SheershBhatnagar
                  </a>
                </li>
                <li className="flex items-center gap-2">
                  <Linkedin className="h-4 w-4 text-primary" />
                  <a href="https://linkedin.com/in/sheershbhatnagar" target="_blank" rel="noreferrer" className="magnetic-link">
                    linkedin.com/in/sheershbhatnagar
                  </a>
                </li>
              </ul>
              <p className="mt-3 text-muted-foreground">
                <span className="text-secondary">$</span> _<span className="cursor-blink"></span>
              </p>
            </div>
          </motion.div>

          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6, delay: 0.1 }}
            className="glass relative flex flex-col justify-between overflow-hidden rounded-2xl p-8"
          >
            <div className="absolute -right-20 -top-20 h-64 w-64 rounded-full bg-gradient-primary opacity-20 blur-3xl" />
            <div className="absolute -bottom-20 -left-20 h-64 w-64 rounded-full bg-secondary/30 blur-3xl" />

            <div className="relative">
              <h3 className="font-display text-3xl font-bold leading-tight sm:text-4xl">
                Got an idea worth <span className="text-gradient">shipping?</span>
              </h3>
              <p className="mt-4 text-muted-foreground">
                I'm open to freelance Flutter projects, full-time roles, and interesting
                collaborations. Drop a line and I'll reply within 24 hours.
              </p>
            </div>

            <a
              href="mailto:sheershbhatnagar2@zohomail.in"
              className="relative mt-8 inline-flex items-center justify-center gap-2 self-start rounded-full bg-gradient-primary px-6 py-3 font-mono text-sm font-semibold text-primary-foreground shadow-lg transition-transform hover:scale-105 animate-pulse-glow"
            >
              <Mail className="h-4 w-4" />
              say hi
            </a>
          </motion.div>
        </div>

        <div className="mt-20 flex flex-col items-center justify-between gap-3 border-t border-border pt-8 font-mono text-xs text-muted-foreground sm:flex-row">
          <span>© {new Date().getFullYear()} Sheersh Bhatnagar</span>
          <span className="flex items-center gap-2">
            <span className="h-2 w-2 rounded-full bg-terminal animate-pulse" />
            online
          </span>
        </div>
      </div>
    </section>
  );
};

export default Contact;
