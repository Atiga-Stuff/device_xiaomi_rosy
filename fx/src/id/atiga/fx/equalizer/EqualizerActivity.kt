/*
 * Copyright (C) 2024 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package id.atiga.fx.equalizer

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.navigation.compose.rememberNavController
import id.atiga.fx.R
import id.atiga.fx.equalizer.ui.EqualizerScreen
import id.atiga.fx.equalizer.ui.EqualizerViewModel
import com.android.settingslib.spa.framework.compose.localNavController
import com.android.settingslib.spa.widget.scaffold.SettingsScaffold

class EqualizerActivity : ComponentActivity() {

    private val viewModel: EqualizerViewModel by viewModels { EqualizerViewModel.Factory }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                MainContent()
            }
        }
    }

    @Composable
    private fun MainContent() {
        val navController = rememberNavController()
        CompositionLocalProvider(navController.localNavController()) {
            SettingsScaffold(
                title = stringResource(id = R.string.dolby_preset)
            ) { paddingValues ->
                EqualizerScreen(
                    viewModel = viewModel,
                    modifier = Modifier.padding(paddingValues)
                )
            }
        }
    }
}
