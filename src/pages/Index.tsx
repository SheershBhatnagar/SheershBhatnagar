import About from "@/components/portfolio/About";
import Awards from "@/components/portfolio/Awards";
import Contact from "@/components/portfolio/Contact";
import CustomCursor from "@/components/portfolio/CustomCursor";
import Experience from "@/components/portfolio/Experience";
import Hero from "@/components/portfolio/Hero";
import Navbar from "@/components/portfolio/Navbar";
import Projects from "@/components/portfolio/Projects";
import Skills from "@/components/portfolio/Skills";

const Index = () => {
  return (
    <main className="relative min-h-screen overflow-hidden bg-background text-foreground">
      <CustomCursor />
      <Navbar />
      <Hero />
      <About />
      <Experience />
      <Projects />
      <Skills />
      <Awards />
      <Contact />
    </main>
  );
};

export default Index;
