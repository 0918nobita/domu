export const length = (nodeList: NodeList): number => {
  return nodeList.length;
};

export const item = (nodeList: NodeList, index: number): Node | null =>
  nodeList.item(index);

export const entries = (nodeList: NodeList): Iterator<[number, Node]> =>
  nodeList.entries();
