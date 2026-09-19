class Walker {
  id: number;
  parent: Walker | void;
  children: Walker[];
  childrenWalked: number;
  _isBeingWalked: boolean;
  constructor(id: number, parent: Walker | void) {
    this.id = id;
    this.parent = parent;
    this.children = [];
    this.childrenWalked = 0;
    this.isBeingWalked = false;
  }
  get isBeingWalked(): boolean {
    return this._isBeingWalked;
  }
  set isBeingWalked(value: boolean) {
    this._isBeingWalked = value;
  }

  addParent(parent: Walker) {
    this.parent = parent;
  }
  addChild(child: Walker) {
    child.addParent(this);
    this.children.push(child);
  }
  #walkChildren() {
    if (this.isBeingWalked) {
      return;
    }
    this.isBeingWalked = true;
    for (let i = 0; i < this.children.length; i++) {
      this.children[i].#walkChildren();
      this.childrenWalked++;
    }
    this.isBeingWalked = false;
  }

  static walk(walker: Walker): Walker {
    for (let i = 0; i < walker.children.length; i++) {
      walker.children[i].#walkChildren();
    }
    return walker;
  }
}

const walker = new Walker(1);
walker.addChild(new Walker(2, walker));
walker.addChild(new Walker(3, walker));
walker.addChild(new Walker(4, walker));

Walker.walk(walker);
