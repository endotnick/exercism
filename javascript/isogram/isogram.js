class Isogram {
  constructor(word) {
    this.word = word.toLowerCase().replace(/[^a-zà-ÿ]/g, '');
  }

  isIsogram() {
    const chars = {};
    let isogram = true;
    this.word.split('').forEach((char) => {
      if (chars[char]) {
        isogram = false;
      }
      chars[char] = true;
    });
    return isogram;
  }
}

module.exports = Isogram;
