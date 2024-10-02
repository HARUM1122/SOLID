THIS IS NOT A GOOD APPROACH AND VIOLATES THE INTERFACE SEGREGATION PRINCIPLE

abstract class Printer {
  void printDocument(String document);
  void scanDocument(String document);
  void faxDocument(String document);
}

class BasicPrinter implements Printer {
    @override
    void printDocument(String document) {
        print("Printing: $document");
    }
    
    @override
    void scanDocument(String document) {
        // Not needed, but has to implement
        throw Exception("BasicPrinter cannot scan!");
    }

    @override
    void faxDocument(String document) {
        // Not needed, but has to implement
        throw Exception("BasicPrinter cannot fax!");
    }
}

// THIS IS A GOOD APPROACH BECAUSE CLIENTS ARE NOT FORCED TO IMPLEMENT THE METHODS THEY DON'T USE. THIS ADHERES TO THE INTERFACE SEGREGATION PRINCIPLE

abstract class Printer {
    void printDocument(String document);
}

abstract class Scanner {
    void scanDocument(String document);
}

abstract class Fax {
    void faxDocument(String document);
}

class BasicPrinter implements Printer {
    @override
    void printDocument(String document) {
        print("Printing: $document");
    }
}

class MultiFunctionPrinter implements Printer, Scanner, Fax {
    @override
    void printDocument(String document) {
        print("Printing: $document");
    }

    @override
    void scanDocument(String document) {
        print("Scanning: $document");
    }

    @override
    void faxDocument(String document) {
        print("Faxing: $document");
    }
}




