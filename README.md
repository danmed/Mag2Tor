# Mag2Tor
Convert magnet files to torrent files

Useful for Sonarr users who have it set to download magnet files to a Blackhole directory.

Have this script cron'd to watch the blackhole folder and it will convert your magnet files to torrent files that RUTorrent will pick up from it's watch folder.

# Usage

* To run every minute

*/1 * * * * ~/mag2tor.sh 2>&1
