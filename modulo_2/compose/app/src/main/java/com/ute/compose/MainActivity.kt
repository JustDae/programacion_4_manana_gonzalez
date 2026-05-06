// MainActivity.kt
package com.ute.compose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.MaterialTheme
import com.ute.compose.ui.*
import com.ute.compose.ui.material3.Paso01SumaScreen
import com.ute.compose.ui.material3.Paso01TextFieldScreen
import com.ute.compose.ui.screens.S02_TextScreen
import com.ute.compose.ui.screens.S03ButtonScreen
import com.ute.compose.ui.screens.S04LayoutScreen
import com.ute.compose.ui.screens.S05ModifierScreen
import com.ute.compose.ui.screens.S06EstadoScreen
import com.ute.compose.ui.screens.S07stateHoistingScreen
import com.ute.compose.ui.screens.S08BienvenidaScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                // ◀ CAMBIA AQUÍ para probar cada paso:
                //Paso01TextFieldScreen()
                Paso01SumaScreen()
                // Paso02_CardScreen()
                // Paso03_LazyColumnScreen()
                // Paso04_ScaffoldScreen()
                // Paso05_NavBarScreen()
                //Paso06_DialogosScreen()   // ← paso activo
            }
        }
    }
}