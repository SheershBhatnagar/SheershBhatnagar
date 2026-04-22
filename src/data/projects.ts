export interface ProjectLink {
  github?: string | null;
  playStore?: string | null;
  appStore?: string | null;
  website?: string | null;
}

export interface ProjectDetail {
  slug: string;
  name: string;
  tag: string;
  period: string;
  description: string;
  stack: string[];
  accent: string;
  links: ProjectLink;
  role: string;
  overview: string;
  journey: { title: string; body: string }[];
  learnings: string[];
  highlights: string[];
}

export const projects: ProjectDetail[] = [
  {
    slug: "skia-coffee",
    name: "Skiá Coffee App",
    tag: "Flutter · Firebase · AWS",
    period: "December 2024 — Present",
    description:
      "A polished iOS & Android e-commerce app for a coffee brand. Firebase Auth, Firestore, payment via Cashfree, and CI/CD via GitHub Actions.",
    stack: ["Flutter", "Firebase", "Cashfree", "Shiprocket", "Docker", "AWS", "GitHub Actions"],
    accent: "from-primary to-secondary",
    links: {
      github: null,
      playStore: "https://play.google.com/store/apps/details?id=com.skiacoffee.skiacoffee&pcampaignid=web_share",
      appStore: "https://apps.apple.com/in/app/skiá-coffee/id6743938956",
    },
    role: "Full Stack Flutter Developer",
    overview:
      "Skiá Coffee is a production-grade e-commerce mobile app built end-to-end for a specialty coffee brand. From auth and catalog to payments and analytics, every layer is wired together for a smooth ordering experience on both iOS and Android.",
    journey: [
      {
        title: "Discovery & architecture",
        body:
          "Mapped the customer journey with the founders, picked Flutter for a single codebase across iOS + Android, and chose Firebase for auth, Firestore, storage and analytics.",
      },
      {
        title: "Catalog & checkout",
        body:
          "Built a dynamic catalog backed by Firestore with image caching, variants, and a checkout flow integrated with Cashfree for UPI, cards and netbanking.",
      },
      {
        title: "Release engineering",
        body:
          "Set up GitHub Actions to build signed Android & iOS bundles, plus AWS-hosted services and Docker for the supporting backend pieces.",
      },
      {
        title: "Launch & iteration",
        body:
          "Shipped to Play Store and App Store, then iterated on FCM-driven engagement, analytics dashboards and crash reporting.",
      },
    ],
    learnings: [
      "Designing data models in Firestore that stay cheap as the catalog grows.",
      "Hardening payment flows against retries, network drops, and webhook race conditions.",
      "Owning the entire iOS release pipeline — provisioning, certificates, TestFlight, App Store Connect.",
    ],
    highlights: [
      "Live on Play Store & App Store",
      "Real-time orders with Firestore",
      "Cashfree payments integration",
      "CI/CD via GitHub Actions",
    ],
  },
  {
    slug: "xhunt",
    name: "Hunt Local - Discovery App",
    tag: "Flutter · Firebase · NodeJS · MongoDB · AWS",
    period: "July 2025 — January 2026",
    description: "A polished Android restaurant discovery e-commerce app. Firebase Auth, NodeJS + MongoDB Backend, payment via Razorpay, and AWS hosting.",
    stack: ["Flutter", "Firebase", "NodeJS", "MongoDB", "Razorpay", "AWS"],
    accent: "from-primary to-secondary",
    links: {
      github: null,
      playStore: "https://play.google.com/store/apps/details?id=com.mobile.discovery_hunt&pcampaignid=web_share",
      appStore: null,
    },
    role: "Flutter Developer",
    overview:
      "Hunt Local - Discovery App is a production-grade e-commerce mobile app built end-to-end for a restaurant discovery platform. From auth and catalog to payments and analytics, every layer is wired together for a smooth ordering experience on both iOS and Android.",
    journey: [
      {
        title: "Discovery & architecture",
        body:
          "Mapped the customer journey with the founders, picked Flutter for a single codebase across iOS + Android, and chose Firebase for auth, Firestore, storage and analytics.",
      },
      {
        title: "Catalog & checkout",
        body:
          "Built a dynamic catalog backed by Firestore with image caching, variants, and a checkout flow integrated with Cashfree for UPI, cards and netbanking.",
      },
      {
        title: "Release engineering",
        body:
          "Set up GitHub Actions to build signed Android & iOS bundles, plus AWS-hosted services and Docker for the supporting backend pieces.",
      },
      {
        title: "Launch & iteration",
        body:
          "Shipped to Play Store and App Store, then iterated on FCM-driven engagement, analytics dashboards and crash reporting.",
      },
    ],
    learnings: [
      "Designing data models in MongoDB that stay cheap as the restaurant catalog grows.",
      "Hardening payment flows against retries, network drops, and webhook race conditions.",
      "Owning the entire iOS release pipeline — provisioning, certificates, TestFlight, App Store Connect.",
    ],
    highlights: [
      "Live on Play Store",
      "Real-time orders with NodeJS + MongoDB",
      "Razorpay payments integration",
      "Managed backend on AWS",
    ],
  },
  {
    slug: "gesturify",
    name: "Gesturify",
    tag: "Flutter · Flask · Hackfinity 1.0",
    period: "November 2024 — December 2024",
    description:
      "Sign-language interpreter that converts hand gestures into letters & words in real time. Led a 4-person team building Flutter app + Flask ML backend.",
    stack: ["Flutter", "Flask", "Computer Vision", "REST API"],
    accent: "from-secondary to-accent",
    links: {
      github: "https://github.com/Pratyushshrivas/Gesturify",
    },
    role: "Team Lead · Mobile + Backend",
    overview:
      "Gesturify is an accessibility-focused app built for Hackfinity 1.0 that translates hand gestures into letters and words on the fly. The Flutter client streams frames to a Flask service running a CV model, and surfaces predictions in a clean, readable UI.",
    journey: [
      {
        title: "Forming the team",
        body:
          "Led a 4-person team across mobile and ML, breaking the problem into a pipeline of capture → infer → assemble.",
      },
      {
        title: "Mobile capture pipeline",
        body:
          "Built the Flutter side with the camera plugin, throttled frame uploads, and a low-latency UI for streaming predictions.",
      },
      {
        title: "ML backend",
        body:
          "Wrapped the CV model in a Flask REST API designed for stateless horizontal scaling.",
      },
      {
        title: "Demo day",
        body:
          "Polished onboarding, latency, and the live transcription view in time for the hackathon presentation.",
      },
    ],
    learnings: [
      "Coordinating a small team under hackathon time pressure.",
      "Designing a low-latency mobile ↔ ML round-trip without killing battery.",
      "Building accessible UI patterns for assistive tech.",
    ],
    highlights: [
      "Built at Hackfinity 1.0",
      "Realtime gesture → text",
      "Flutter + Flask architecture",
      "4-person team lead",
    ],
  },
  {
    slug: "ai-assistant",
    name: "AI Assistant",
    tag: "Flutter · OpenAI · ChatGPT · DALL-E",
    period: "September 2025 — In development",
    description:
      "An in-development Flutter AI assistant app powered by ChatGPT and DALL-E APIs for natural conversations, question answering, and image generation.",
    stack: ["Flutter", "Dart", "OpenAI API", "ChatGPT", "DALL-E", "REST API"],
    accent: "from-primary to-secondary",
    links: {
      github: "https://github.com/SheershBhatnagar/AI-Assistant",
    },
    role: "Flutter Developer",
    overview:
      "AI Assistant is an in-development mobile app that brings conversational AI and image generation into a Flutter experience. It uses ChatGPT for natural language conversations and DALL-E for turning text prompts into generated visuals.",
    journey: [
      {
        title: "Product direction",
        body:
          "Started with the goal of making a compact AI companion where users can ask questions, chat naturally, and explore generated images from prompts.",
      },
      {
        title: "Flutter app foundation",
        body:
          "Built the mobile interface in Flutter with a focus on responsive chat interactions, clean input flows, and a smooth assistant-style experience.",
      },
      {
        title: "AI integration",
        body:
          "Integrated OpenAI-powered chat and image-generation flows through API-driven communication between the app and backend pieces.",
      },
      {
        title: "Still in development",
        body:
          "The project is actively evolving, with ongoing work around backend structure, Flutter polish, API handling, and user experience improvements.",
      },
    ],
    learnings: [
      "Designing a conversational mobile UI that feels fast and natural.",
      "Working with OpenAI APIs for both text and image generation workflows.",
      "Structuring Flutter and backend pieces so AI requests stay manageable as features grow.",
    ],
    highlights: [
      "In development",
      "ChatGPT-style conversations",
      "DALL-E image generation",
      "Flutter mobile app",
    ],
  },
  {
    slug: "weather-app",
    name: "Weather App",
    tag: "Flutter · OpenWeather API",
    period: "October 2023 — Present",
    description:
      "Lightweight cross-platform weather app with location-based real-time forecasts via OpenWeatherAPI.",
    stack: ["Flutter", "REST API", "Geolocation"],
    accent: "from-primary to-accent",
    links: {
      github: "https://github.com/SheershBhatnagar/Weather-App",
    },
    role: "Solo Developer",
    overview:
      "A small, focused Flutter app that uses device geolocation to fetch and display real-time weather and forecasts via the OpenWeather API. Built as a hands-on dive into Flutter state management and consuming REST APIs.",
    journey: [
      {
        title: "Why this project",
        body:
          "Wanted a compact playground to get fluent with Flutter widgets, async data, and the platform permission model.",
      },
      {
        title: "Geolocation + API",
        body:
          "Wired up geolocation, handled permissions gracefully, and consumed OpenWeather's REST endpoints with proper error states.",
      },
      {
        title: "Polish",
        body:
          "Iterated on layout, typography and loading states until the app felt native on both Android and iOS.",
      },
    ],
    learnings: [
      "Flutter's widget tree, BuildContext, and async UI patterns.",
      "Handling runtime permissions cleanly across platforms.",
      "Designing for quick, single-purpose interactions.",
    ],
    highlights: [
      "Real-time forecasts",
      "Cross-platform Flutter",
      "Location-aware UI",
    ],
  },
];

export const getProject = (slug: string) =>
  projects.find((p) => p.slug === slug);
