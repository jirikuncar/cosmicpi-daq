-- configuration for cosmicpi daq
INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC)
VALUES (2000, 'P_COSMICPI:STATUS', 0,'String', 1, 1, 1, 'UNINITIALISED');
INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC)
VALUES (2001, 'P_COSMICPI:ALIVE', 0,'Integer', 1, 0, 1, 'UNINITIALISED');
INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC)
VALUES (2004, 'E_COSMICPI:STATUS', 0,'String', 1, 1, 1, 'UNINITIALISED');
INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC)
VALUES (2002, 'E_COSMICPI:ALIVE', 0,'Integer', 1, 0, 1, 'UNINITIALISED');
INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC)
VALUES (2003, 'E_COSMICPI:COMM_FAULT', 0,'Integer', 1, 1, 1, 'UNINITIALISED');

INSERT INTO PROCESS (PROCID, PROCNAME, PROCDESC, PROCSTATE_TAGID, PROCALIVE_TAGID, PROCALIVEINTERVAL, PROCMAXMSGSIZE, PROCMAXMSGDELAY, PROCSTATE)
VALUES (99, 'P_COSMICPI', 'PROCESS COSMICPI', 2000, 2001, 60000, 100, 300, 'DOWN');

INSERT INTO EQUIPMENT (EQID, EQNAME, EQDESC, EQHANDLERCLASS, EQSTATE_TAGID, EQALIVE_TAGID, EQALIVEINTERVAL, EQCOMMFAULT_TAGID, EQ_PROCID, EQADDRESS)
VALUES (150, 'E_COSMICPI', 'COSMICPI EQUIPMENT', 'org.cosmicpi.daq.CosmicMessageHandler', 2004, 2002, 60000, 2003, 99, '');


INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC, TAG_EQID, TAGRULEIDS, TAGADDRESS)
VALUES (200000, 'E_COSMICPI:PACKET', 0, 'String', 0, 1, 1, 'UNINITIALISED', 150, NULL,
        '<DataTagAddress><HardwareAddress class="cern.c2mon.shared.common.datatag.address.impl.SimpleHardwareAddressImpl"><address>1</address></HardwareAddress><time-to-live>3600000</time-to-live><priority>2</priority><guaranteed-delivery>true</guaranteed-delivery></DataTagAddress>');

INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC, TAG_EQID, TAGRULEIDS, TAGADDRESS)
VALUES (200001, 'E_COSMICPI:ENERGY:CHANNEL1', 0, 'Float', 0, 1, 1, 'UNINITIALISED', 150, NULL,
        '<DataTagAddress><HardwareAddress class="cern.c2mon.shared.common.datatag.address.impl.SimpleHardwareAddressImpl"><address>1</address></HardwareAddress><time-to-live>3600000</time-to-live><priority>2</priority><guaranteed-delivery>true</guaranteed-delivery></DataTagAddress>');

INSERT INTO DATATAG (TAGID, TAGNAME, TAGMODE, TAGDATATYPE, TAGCONTROLTAG, TAGLOGGED, TAGQUALITYCODE, TAGQUALITYDESC, TAG_EQID, TAGRULEIDS, TAGADDRESS)
VALUES (200002, 'E_COSMICPI:ENERGY:CHANNEL2', 0, 'Float', 0, 1, 1, 'UNINITIALISED', 150, NULL,
        '<DataTagAddress><HardwareAddress class="cern.c2mon.shared.common.datatag.address.impl.SimpleHardwareAddressImpl"><address>1</address></HardwareAddress><time-to-live>3600000</time-to-live><priority>2</priority><guaranteed-delivery>true</guaranteed-delivery></DataTagAddress>');

