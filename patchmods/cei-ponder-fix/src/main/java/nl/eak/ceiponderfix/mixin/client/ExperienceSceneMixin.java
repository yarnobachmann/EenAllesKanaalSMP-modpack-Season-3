package nl.eak.ceiponderfix.mixin.client;

import net.createmod.ponder.api.scene.SceneBuilder;
import net.createmod.ponder.api.scene.SceneBuildingUtil;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import plus.dragons.createenchantmentindustry.client.ponder.scene.ExperienceScene;

@Mixin(ExperienceScene.class)
public abstract class ExperienceSceneMixin {
    @Inject(method = "basic", at = @At("HEAD"), cancellable = true)
    private static void eak$disableBasic(SceneBuilder scene, SceneBuildingUtil util, CallbackInfo ci) {
        ci.cancel();
    }

    @Inject(method = "advance", at = @At("HEAD"), cancellable = true)
    private static void eak$disableAdvance(SceneBuilder scene, SceneBuildingUtil util, CallbackInfo ci) {
        ci.cancel();
    }

    @Inject(method = "prepare", at = @At("HEAD"), cancellable = true)
    private static void eak$disablePrepare(SceneBuilder scene, SceneBuildingUtil util, CallbackInfo ci) {
        ci.cancel();
    }

    @Inject(method = "beaconBase", at = @At("HEAD"), cancellable = true)
    private static void eak$disableBeaconBase(SceneBuilder scene, SceneBuildingUtil util, CallbackInfo ci) {
        ci.cancel();
    }
}
