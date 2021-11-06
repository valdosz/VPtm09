CREATE TABLE dosen (iddosen int(10) NOT NULL AUTO_INCREMENT, namadosen varchar(50), PRIMARY KEY (iddosen));
CREATE TABLE mahasiswa (doseniddosen int(10) NOT NULL, idmahasiswa int(10) NOT NULL AUTO_INCREMENT, namamahasiswa varchar(50), matakuliahidmatakuliah int(10) NOT NULL, PRIMARY KEY (idmahasiswa));
CREATE TABLE matakuliah (idmatakuliah int(10) NOT NULL AUTO_INCREMENT, namamatakuliah varchar(50), matakuliahidmatakuliah int(10) NOT NULL, PRIMARY KEY (idmatakuliah));
ALTER TABLE mahasiswa ADD CONSTRAINT FKmahasiswa843639 FOREIGN KEY (doseniddosen) REFERENCES dosen (iddosen);
ALTER TABLE matakuliah ADD CONSTRAINT FKmatakuliah635677 FOREIGN KEY (matakuliahidmatakuliah) REFERENCES matakuliah (idmatakuliah);
ALTER TABLE mahasiswa ADD CONSTRAINT FKmahasiswa131984 FOREIGN KEY (matakuliahidmatakuliah) REFERENCES matakuliah (idmatakuliah);
