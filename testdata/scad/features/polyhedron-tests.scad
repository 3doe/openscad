module polyhedrons() {
 polyhedron(points = [[1,0,0],[-1,0,0],[0,1,0],[0,-1,0],[0,0,1],[0,0,-1]],
            triangles = [[0,4,2],[0,2,5],[0,3,4],[0,5,3],[1,2,4],[1,5,2],[1,4,3], [1,3,5]]);

 // One face flipped
 translate([2,0,0])
  polyhedron(points = [[1,0,0],[-1,0,0],[0,1,0],[0,-1,0],[0,0,1],[0,0,-1]],
            triangles = [[0,4,2],[0,2,5],[0,3,4],[0,5,3],[1,2,4],[1,5,2],[1,3,4], [1,3,5]]);

 // All faces flipped
 translate([4,0,0])
  polyhedron(points = [[1,0,0],[-1,0,0],[0,1,0],[0,-1,0],[0,0,1],[0,0,-1]],
            triangles = [[0,2,4],[0,5,2],[0,4,3],[0,3,5],[1,4,2],[1,2,5],[1,3,4], [1,5,3]]);
}

polyhedrons();
translate([0,2,0]) difference() {
  polyhedrons();
  translate([2,0,2]) cube([8,3,3], center=true);
}
