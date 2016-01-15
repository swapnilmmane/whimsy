#
# Where to find the archive (remote and local)
#

if Dir.exist? '/srv/mail'
  SOURCE = 'whimsy-vm2.apache.org:/srv/mail'
  ARCHIVE = '/srv/mail'
else
  SOURCE = 'minotaur.apache.org:/home/apmail/private-arch/officers-secretary'
  ARCHIVE = File.basename(SOURCE)
end

#
# GPG's work directory override
#

GNUPGHOME = (Dir.exist?('/srv/gpg') ? '/srv/gpg' : nil)
