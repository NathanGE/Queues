'use strict';

function Queue() {
  let items = [];

  this.enqueue = (element) => {
    items.push(element);
  };

  this.dequeue = (element) => {
    items.shift();
  };

  this.front = (element) => {
    return items[0];
  };

  this.isEmpty = (element) => {
    return items.length === 0;
  };

  this.print = () => {
    console.log(items.toString());
  };
}

let queue = new Queue();
queue.enqueue(1);
queue.enqueue(2);
queue.print();
