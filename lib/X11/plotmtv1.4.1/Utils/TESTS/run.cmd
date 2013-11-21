REM Simple script to test the routines 

@echo off

echo ""
echo ""
echo ""
echo ""
echo "Converting contour format to ASCII MTVDAT format..."
echo "% ctr2mtv ctr_infile0.ctr ctr_infile1.ctr -o ctr_infile.mtv"
ctr2mtv ctr_infile0.ctr ctr_infile1.ctr -o ctr_infile.mtv
plotmtv ctr_infile.mtv

echo ""
echo ""
echo ""
echo ""
echo "Converting contour format to BINARY MTVDAT format..."
echo "% ctr2mtv -b ctr_imgelb.ctr.Z -o ctr_imgelb.mtv"
ctr2mtv -b ctr_imgelb.ctr.Z -o ctr_imgelb.mtv
plotmtv ctr_imgelb.mtv

echo ""
echo ""
echo ""
echo ""
echo "Converting BINARY MTVDAT format to ASCII MTVDAT format..."
echo "% mtv2mtv -b ctr_imgelb.mtv -o ctr_imgelb_a.mtv"
mtv2mtv ctr_imgelb.mtv -o ctr_imgelb_a.mtv
plotmtv ctr_imgelb_a.mtv

echo ""
echo ""
echo ""
echo ""
echo "Converting drawplot format to ASCII MTVDAT format..."
echo "drawplot2mtv f77punch7.2D -o f77punch7.mtv"
drawplot2mtv f77punch7.2D -o f77punch7.mtv
plotmtv f77punch7.mtv

echo ""
echo ""
echo ""
echo ""
echo "Converting pdraw format to ASCII MTVDAT format..."
echo "pdraw2mtv curves.plot.3D -o curves.plot.mtv"
pdraw2mtv curves.plot.3D -o curves.plot.mtv
plotmtv curves.plot.mtv

echo ""
echo ""
echo ""
echo ""
echo "Converting random 3D points to ASCII MTVDAT format..."
echo "rand2mtv < rand2mtv.in"
rand2mtv < rand2mtv.in
plotmtv rand2mtv.mtv

del *.mtv
