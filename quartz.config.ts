import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

const config: QuartzConfig = {
  configuration: {
    pageTitle: "bilbois",
    enableSPA: true,
    enablePopovers: true,
    analytics: null, // No analytics included
    locale: "en-GB",
    baseUrl: "bilbois.me",
    ignorePatterns: [".obsidian", "Templates", "desktop.ini"],
    defaultDateType: "modified",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true, // Using Google CDN for font caching
      typography: {
        header: "Karla, sans-serif", // Font for headers
        code: "Courier New, monospace", // Font for code
        body: "Karla, sans-serif", // Font for body
      },
      colors: {
        lightMode: {
          light: "#F8F5F1", // Page background
          lightgray: "#EEE7DD", // Borders
          gray: "#DF453A", // Graph links, heavier borders
          darkgray: "#594129", // Body text
          dark: "#443014", // Header text and icons
          secondary: "#2A779E", // Link color, current graph nodes
          tertiary: "#4BA0D2", // Hover states and visited graph nodes
          highlight: "#FCFAF8", // Internal link background, highlighted text, highlighted lines of code
          textHighlight: "#F9E9C1", // Markdown highlighted text background
        },
        darkMode: {
          light: "#2A241D", // Page background
          lightgray: "#2A241D", // Borders
          gray: "#F35044", // Graph links, heavier borders
          darkgray: "#D2BCA0", // Body text
          dark: "#EBDAC6", // Header text and icons
          secondary: "#4096B8", // Link color, current graph nodes
          tertiary: "#48A4C0", // Hover states and visited graph nodes
          highlight: "#1D1914", // Internal link background, highlighted text, highlighted lines of code
          textHighlight: "#554217", // Markdown highlighted text background
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "filesystem"],
      }),
      Plugin.SyntaxHighlighting({
        theme: {
          light: "github-light",
          dark: "github-dark",
        },
        keepBackground: false,
      }),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }), // LaTeX with KaTeX
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.NotFoundPage(),
    ],
  },
}

export default config
