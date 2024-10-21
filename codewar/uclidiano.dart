/* Given a point in a Euclidean plane (x and y), return the quadrant the point exists 
in: 1, 2, 3 or 4 (integer). x and y are non-zero integers, 
therefore the given point never lies on the axes. */
/* Dado un punto en un plano euclidiano (x e y), devuelve el cuadrante en el que existe el punto 
existe: 1, 2, 3 o 4 (enteros). x e y son enteros distintos de cero, 
por lo tanto, el punto dado nunca se encuentra en los ejes. */

// si me dan  -7,9 el punto esta en el cuadrante 2
int quadrant(int x, int y) {
  if (x > 0 && y < 0) {
    return 4;
  }
   if (x < 0 && y > 0) {
    return 2;
  }

  return x < 0 && y < 0 ? 3 : 1;
}

void main() {
  print(quadrant(-8, 6)); 
}
