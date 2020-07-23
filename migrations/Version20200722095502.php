<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200722095502 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE joboffer DROP FOREIGN KEY FK_F33F81644BA3D9E8');
        $this->addSql('DROP INDEX FK_F33F8164DE95C867 ON joboffer');
        $this->addSql('ALTER TABLE joboffer CHANGE sector sector_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE joboffer ADD CONSTRAINT FK_F33F8164DE95C867 FOREIGN KEY (sector_id) REFERENCES sector (id)');
        $this->addSql('CREATE INDEX FK_F33F8164DE95C867 ON joboffer (sector_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE joboffer DROP FOREIGN KEY FK_F33F8164DE95C867');
        $this->addSql('DROP INDEX FK_F33F8164DE95C867 ON joboffer');
        $this->addSql('ALTER TABLE joboffer CHANGE sector_id sector INT DEFAULT NULL');
        $this->addSql('ALTER TABLE joboffer ADD CONSTRAINT FK_F33F81644BA3D9E8 FOREIGN KEY (sector) REFERENCES sector (id)');
        $this->addSql('CREATE INDEX FK_F33F8164DE95C867 ON joboffer (sector)');
    }
}
