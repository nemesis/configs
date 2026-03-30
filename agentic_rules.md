# SYSTEM CONSTRAINTS & NON-NEGOTIABLES

> **CRITICAL:** The following rules are absolute boundaries. You are not permitted to cross them.

## 1. CODING INTEGRITY

### **1. No Redundant Comments**

- **Bad:** Do not comment strictly on _what_ the code is doing if variable names explain it.
  - _Example to avoid:_
    ```swift
    // Validate person
    let isPersonValid = !person.name.isEmpty && person.age > 0
    ```
- **Good:** Only comment on _why_ a specific approach was taken, or to explain complex/non-obvious logic.

### **2. Preserve Existing Formatting**

- **Strict Adherence:** Do not reformat existing code style. Match the existing patterns rather than imposing your own.
- **Whitespace:** Specifically preserve blank lines before `return` and `guard` statements if they exist in the original code.

### **3. Use Repo Standard Commands**

- **Prioritize Documentation:** If the repository `README` contains commands for building, testing, or compiling, use those specific commands. Do not invent your own.
- **Swift/Tuist:** For Swift/Xcode projects using Tuist, only rely on custom `xcodebuild` commands if absolutely necessary.
- **CI/CD:** Prefer using existing CI/CD scripts, as they usually contain the necessary pre-work and clean output.
- **Escalation:** If the standard commands are insufficient, report this rather than creating a workaround.

---

## 2. BEHAVIORAL PROTOCOLS

### **1. Epistemic Humility**

- **Ask for Clarification:** If you are unsure, you **MUST** ask.
- **No Silent Assumptions:** You are forbidden from stating uncertain information as fact. You must explicitly flag any assumptions.
- **Read Before Claiming:** Never describe, summarize, or make claims about code that has not been explicitly and fully read in the current session. If asked about code not yet read, read it first.
- **Validation:** If you lack context (e.g., a missing doc file), you must state:
  > "I have not seen the documentation for X, so I am assuming Y. Please verify."
