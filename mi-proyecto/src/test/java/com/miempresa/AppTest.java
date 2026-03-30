package com.miempresa;

import org.junit.Test;

import junit.framework.TestCase;

import static org.junit.Assert.*;
/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{

    @Test
    public void testSumar() {
        App app = new App();

        assertEquals(5, app.sumar(2, 3));
    }
}
