concat:
	awk 'FNR==1{print ""}{print}' ./scripts/*.sh > dist/all.sh
	chmod +x dist/all.sh
