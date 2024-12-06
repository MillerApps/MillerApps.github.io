document.addEventListener('DOMContentLoaded', () => {
  const codeBlocks = document.querySelectorAll('pre.highlight');
  
  codeBlocks.forEach((codeBlock) => {
    const wrapper = document.createElement('div');
    wrapper.className = 'code-wrapper';
    
    const header = document.createElement('div');
    header.className = 'code-header';
    
    const copyButton = document.createElement('button');
    copyButton.className = 'copy-button';
    copyButton.textContent = 'Copy';
    
    copyButton.addEventListener('click', async () => {
      const code = codeBlock.querySelector('code');
      try {
        await navigator.clipboard.writeText(code.textContent);
        copyButton.classList.add('copied');
        copyButton.textContent = 'Copied!';
        setTimeout(() => {
          copyButton.classList.remove('copied');
          copyButton.textContent = 'Copy';
        }, 2000);
      } catch (err) {
        console.error('Failed to copy:', err);
        copyButton.textContent = 'Failed';
      }
    });
    
    header.appendChild(copyButton);
    codeBlock.parentNode.insertBefore(wrapper, codeBlock);
    wrapper.appendChild(header);
    wrapper.appendChild(codeBlock);
  });
}); 