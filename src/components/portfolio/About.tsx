import { motion } from "framer-motion";
import SectionHeading from "./SectionHeading";

const About = () => {
  return (
    <section id="about" className="relative py-28">
      <div className="container grid gap-12 lg:grid-cols-[1fr_1.1fr] lg:items-center">
        <div>
          <SectionHeading index="01" title="About me" />
          <div className="space-y-4 text-base text-muted-foreground sm:text-lg">
            <p>
              I'm a <span className="text-foreground">Full Stack Flutter Developer</span> currently
              shipping a production Android app at{" "}
              <span className="text-primary">Decube Innovation Labs</span>. I love the bit where
              design meets engineering — pixel-perfect UI on the front, well-architected
              infra on the back.
            </p>
            <p>
              Pursuing a <span className="text-foreground">Master's in Generative AI</span> at SRM
              University (CGPA 9.16), and constantly tinkering with cloud, DevOps, and side
              projects ranging from coffee e-commerce apps to sign-language interpreters.
            </p>
            <p className="font-mono text-sm">
              <span className="text-secondary">$</span> currently learning →{" "}
              <span className="text-primary">LLMs, Edge AI, Rust</span>
            </p>
          </div>
        </div>

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
            <span className="ml-3 font-mono text-xs text-muted-foreground">
              sheersh@portfolio: ~/about.dart
            </span>
          </div>
          <pre className="overflow-x-auto p-5 font-mono text-[13px] leading-relaxed">
{`class Developer {
  final String name = `}<span className="text-terminal">"Sheersh Bhatnagar"</span>{`;
  final String role = `}<span className="text-terminal">"Full Stack Flutter Dev"</span>{`;
  final String location = `}<span className="text-terminal">"Jaipur, India"</span>{`;

  final List<String> stack = [
    `}<span className="text-primary">"Flutter"</span>{`, `}<span className="text-primary">"Firebase"</span>{`, `}<span className="text-primary">"AWS"</span>{`,
    `}<span className="text-primary">"Python"</span>{`, `}<span className="text-primary">"Docker"</span>{`, `}<span className="text-primary">"PostgreSQL"</span>{`,
  ];

  `}<span className="text-secondary">String</span>{` build() => `}<span className="text-terminal">"things people love using"</span>{`;
}`}
          </pre>
        </motion.div>
      </div>
    </section>
  );
};

export default About;
