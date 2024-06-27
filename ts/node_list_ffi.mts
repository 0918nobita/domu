export const length = (nodeList: NodeList): number => {
  return nodeList.length;
};

export const item = (nodeList: NodeList, index: number): Node | null => {
  return nodeList.item(index)
};
