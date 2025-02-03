## **QR Codes Reimagined** – Embedding Custom Images through Algebraic Structures and Coding Theory

> [!NOTE] University of Lincoln | MTH2006 Industrial and Financial Mathematics

> [!WARNING] Just a draft!
> Ensure that this explains how companies currently solve the issue (replacing a chunk with an image, utilising its error correction) and how my solution is more elegant (modifying the underlying patterns).

### Purpose

To design a visually engaging QR code generation tool that integrates custom images by strategically modifying the mathematical framework of QR encoding, demonstrating the industrial application of algebraic structures and coding theory.

### 10-Second Sell

QR codes are functional but generic. This project bridges branding and technology: *How can we embed custom images into QR codes without breaking their functionality?* Using algebraic error correction and matrix encoding, we’ll create scannable, artistic QR codes for marketing, packaging, and digital campaigns.

### Problem Statement

**Industry Challenge**: Companies need QR codes that reflect their brand identity, but standard QR codes lack visual appeal. Overlaying images often obstructs data, rendering codes unscannable, or at least reduces error correction abilities.

**Mathematical Problem**: Balancing image integration with data integrity requires precise manipulation of QR code modules and error correction algorithms.

### Mathematics in Action

1. **Algebraic Structures**:
	- QR codes use a grid (matrix) of black/white modules. Positioning, alignment, and timing patterns rely on linear algebra.
	- **Reed-Solomon Codes**: Error correction encodes data redundantly using polynomial arithmetic over finite fields (Galois fields).

2. **Image Integration Strategy**:
	- Identify non-critical modules (e.g., less significant bits in error-corrected regions) to replace with image pixels.
	- Optimize module replacement thresholds using coding theory to ensure scannability.

### Software Solution

Develop a Python tool that:
1. Accepts a URL/text and an image.
2. Generates a base QR code with configurable error correction (e.g., Reed-Solomon level Q).
3. Overlays the image by selectively altering modules, preserving critical patterns (e.g., finder marks).
4. Validates scannability via checksum tests.

***Note**: Maybe this could be a website, if I have time?*

**Example Output**: A QR code for `https://lincoln.ac.uk` featuring the university’s crest subtly embedded in its design.

### Poster Design Outline

**Title**: *QR Codes Reimagined: Merging Branding and Technology via Algebraic Error Correction* (54pt, bold)
**Visuals**:
- **Diagram 1**: QR code structure (version, format, data regions).
- **Diagram 2**: Reed-Solomon encoding/decoding flow.
- **Before/After**: Standard QR vs. custom image-embedded QR.
- **Software Workflow**: Input → Encoding → Image integration → Output.

**Text**: Concise bullet points; citations to ISO/IEC 18004 (QR standards) and coding theory textbooks.

### Presentation Script (3-Minute Summary)

1. **Hook**: “QR codes are everywhere—but they all look the same. What if they could be *both functional and artistic*?”
2. **Problem**: Brands need recognizable codes; image overlays often fail.
3. **Math**: Reed-Solomon codes let us ‘sacrifice’ some modules for design without losing data.
4. **Demo**: Show generated QR with embedded image; scan live to prove functionality.
5. **Impact**: Applications in marketing, tourism, and secure document tagging.

### Q&A Preparation

- **Trade-offs**: “Higher error correction allows more image pixels but increases code size.”
- **Technical Depth**: “We use finite field arithmetic to ensure replaced modules don’t corrupt encoded data.”
- **Real-World Use**: “Retailers like Starbucks use similar methods for branded payment codes.”

### Marking Criteria Alignment

- **Content**: Links coding theory (university modules) to industrial design needs.
- **Clarity**: Visual-heavy poster with minimal text; intuitive flow.
- **Presentation**: Confident demo, analogies for non-experts (e.g., “QR codes are like puzzles—we tweak pieces without breaking the picture”).

**Deliverables**: Poster (A2), software prototype, 3-minute pitch.

**Tagline**: *Where Math Meets Design* 🌐🎨

*University of Lincoln logo included per branding guidelines.*