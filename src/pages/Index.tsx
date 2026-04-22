import { lazy, Suspense } from "react";
import DesktopCustomCursor from "@/components/portfolio/DesktopCustomCursor";
import Hero from "@/components/portfolio/Hero";
import Navbar from "@/components/portfolio/Navbar";

const About = lazy(() => import("@/components/portfolio/About"));
const Experience = lazy(() => import("@/components/portfolio/Experience"));
const Projects = lazy(() => import("@/components/portfolio/Projects"));
const Skills = lazy(() => import("@/components/portfolio/Skills"));
const Awards = lazy(() => import("@/components/portfolio/Awards"));
const Contact = lazy(() => import("@/components/portfolio/Contact"));

const Index = () => {
  return (
    <main className="relative min-h-screen overflow-hidden bg-background text-foreground">
      <DesktopCustomCursor />
      <Navbar />
      <Hero />
      <Suspense fallback={null}>
        <About />
        <Experience />
        <Projects />
        <Skills />
        <Awards />
        <Contact />
      </Suspense>
    </main>
  );
};

export default Index;
