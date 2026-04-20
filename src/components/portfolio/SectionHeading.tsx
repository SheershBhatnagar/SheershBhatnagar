import { motion } from "framer-motion";

interface Props {
  index: string;
  title: string;
  subtitle?: string;
}

const SectionHeading = ({ index, title, subtitle }: Props) => (
  <motion.div
    initial={{ opacity: 0, y: 30 }}
    whileInView={{ opacity: 1, y: 0 }}
    viewport={{ once: true, margin: "-80px" }}
    transition={{ duration: 0.6 }}
    className="mb-12"
  >
    <div className="mb-3 flex items-center gap-3 font-mono text-sm text-primary">
      <span>{index}</span>
      <span className="h-px w-12 bg-gradient-to-r from-primary to-transparent" />
    </div>
    <h2 className="font-display text-4xl font-bold tracking-tight sm:text-5xl">
      {title}
    </h2>
    {subtitle && <p className="mt-3 max-w-xl text-muted-foreground">{subtitle}</p>}
  </motion.div>
);

export default SectionHeading;
