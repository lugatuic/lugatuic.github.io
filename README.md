# lug.cs.uic.edu
Work in progress redesign of the LUG website.
## Usage
### Environment setup
```bash
# If using NVM
nvm install 26
npm install
```
Note: project does not seem to build correctly using versions below 26.

### Development preview
```bash
npm run dev
```

### Static site generation
```bash
npm run build
```
Uses `@sveltejs/adapter-static`.