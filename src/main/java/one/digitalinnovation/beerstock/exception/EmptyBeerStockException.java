package one.digitalinnovation.beerstock.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class EmptyBeerStockException extends Exception {

    public EmptyBeerStockException(Long id, int quantityToDecrement, int quantity) {
        super(String.format("The informed decrement %s exceeds the current beer stock (%s) with ID = %s",quantityToDecrement, quantity, id));
    }

}
