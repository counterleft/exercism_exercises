var Message = function(message) {
  this.message = message;
};

Message.prototype.isSilent = function() {
  return this.message == null || this.message.trim().length == 0;
};

Message.prototype.isYelling = function() {
  return this.message.match(/[a-zA-Z]+/) != null && this.message.toUpperCase() === this.message;
};

Message.prototype.isQuestion = function() {
  var indexOfLastCharacter = this.message.length - 1;
  return this.message.charAt(indexOfLastCharacter) === '?';
};

var Bob = function() {};

Bob.prototype.hey = function(message) {
  var msg = new Message(message);

  if (msg.isSilent()) {
    return "Fine. Be that way!";
  }
  else if (msg.isYelling()) {
    return "Woah, chill out!";
  }
  else if (msg.isQuestion()) {
    return "Sure.";
  }

  return "Whatever.";
};

module.exports = Bob;
