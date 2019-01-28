% Chapitre 1 - Introduction
% Bernard TOURANCHEAU (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Jour numéro Mois année

# Informations

Professeur d'amphi: Bernard.Tourancheau@univ-grenoble-alpes.fr

Professeur de TP: Nicolas BASSET

En-tête de mails: [RICM3-CN]

Retard: train Annecy-Valence

Programme :

- 9 amphis Janvier-Avril
- 4 TP Février-Avril (1/3)
- Examen Mai (2/3)

Bibliographie: Mahé (CN), Tannenbaum (CN), Kurose & Ross (TPN)

Cours sur moodle

# 1 - Data communications

- **Telecommunication**: communication at a distance
- **Data**: information presented in whatever form is agreed upon by the parties creating and using the data
- **Data communications**: are the exchange of data between two devices via some form of transmission medium

# 2 - Networks

A **network** is a set of devices (often referred to as **nodes**: computer, printer...) connected by communication **links** (cable, air, optical fiber...).

Criteria: performance, reliability, security

Type of connexions: point to point/multipoint

Type of transmittion: unicast, multicast, broadcast

Categories of networks:

- **System Area Networks** (SANs): very short distances ~nm-cm
- **Local Area Networks** (LANs): short distances ~100m
- **Wide Area Networks** (WANs): long distances ~km
- **Low Power WAN** (LPWANs): IoT, large areas ~km

# 3 - Internet

# 4 - Information theory

**Information theory** describes the quantity of information contained in a symbol. It is based on the decision that can be made on a particular event with the given symbol. Information is the resolution of uncertainty. [entropy, Shannon, Huffman]

# 5 - Protocols

A **protocol** consists of a set of **rules** that govern data communications. It determines what is communicated, how it is communicated and when it is communicated.

- **Syntax**: structure or format of the data (how to read)
- **Semantics**: interprets the meaning of the bits (knows all field actions)
- **Timing**: speed at which data should be sent or at which it is being received

# 6 - Physical layer protocol

A **physical protocol** manages transmission, data, communication channel adaptation. It consists of (sampling), digitalization, coding, (error detection, error correction), rules that govern data communications. It determines how raw data is communicated and recovered. [signal, coding, error]

# 7 - Take away

- **Network**: structured in a layer
- **Digital Communications**:
  - Information theory bits ≠ binary digits
  - Entropy is the limit of information bits for a representation
  - Binary digits coding tries to reach the limit
  - Huffman coding
- **IETF.org**: the Internet Engineering Task Force is an open standards organization, which develops and promotes voluntary Internet standards
- **ADSL**: 4kHz - 1GHz $\rightarrow$ Internet / 300 - 3kHz $\rightarrow$ Téléphonie
  Atténuation par la longueur du cable qui n'est pas fait pour les haute fréquence --> plus l'armoire est proche plus le débit est haut
