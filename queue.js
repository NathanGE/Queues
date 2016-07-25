function Queue() {
  var items = [];

  this.enqueue = function(element) {
    items.push(element);
  };

  this.dequeue = function(element) {
    items.shift();
  };

  this.front = function(element) {
    return items[0];
  };

  this.isEmpty = function(element) {
    return items.length() === 0;
  };

  this.print = function() {
    console.log(items.toString());
  };
}
