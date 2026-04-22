# Codex Packwiz Conversion Report

## Detected versions

- Minecraft version: `1.21.1`
- Loader type: `NeoForge`
- Loader version: not present in the original folder; selected `21.1.227` from NeoForge Maven metadata for generated files.
- Original folder was not a Git repository.
- `packwiz` was not installed on PATH.
- `java` on PATH was Java 8; Prism should use Java 21 for Minecraft 1.21.1.

## Managed folders and files found

- `mods/`: 257 jar files found.
- `config/`: included recursively.
- `datapacks/`: included recursively.
- `resourcepacks/`: included recursively.
- `shaderpacks/`: included recursively.
- `options.txt`: included.
- `servers.dat`: included.
- `defaultconfigs/` and `kubejs/`: not present.

## Files created or changed and why

- `README.md`
- `.gitignore`
- `.nojekyll`
- `deployment.example.json`
- `pack.toml`
- `index.toml`
- `scripts/setup-packwiz.ps1`
- `scripts/refresh-pack.ps1`
- `scripts/build-prism-zip.ps1`
- `dist/EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip`
- `EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip`
- `modpack icon.png`
- `codex-report.md`
- `mods/*.pw.toml (244 files)`

- `pack.toml`: packwiz public entry point and version metadata.
- `index.toml`: packwiz file index for hosted installation.
- `mods/*.pw.toml`: Modrinth metadata for exact hash matched mods.
- Unresolved jars were left in `mods/` and indexed directly as local hosted files.
- Existing original files were not deleted.

## Mod resolution summary

- Total jars: 257
- Exact Modrinth matches: 244
- CurseForge/unresolved/local hosted: 13
- CurseForge automated matching was attempted as fallback, but exact CurseForge file resolution requires CurseForge API credentials. These jars are therefore listed clearly and indexed as local hosted files.

## Unresolved jars

- Apotheosis-1.21.1-8.5.2.jar
- ApothicAttributes-1.21.1-2.9.1.jar
- ApothicEnchanting-1.21.1-1.5.2.jar
- ApothicSpawners-1.21.1-1.3.4.jar
- framework-neoforge-1.21.1-0.13.11.jar
- ftb-chunks-neoforge-2101.1.14.jar
- ftb-essentials-neoforge-2101.1.9.jar
- ftb-library-neoforge-2101.1.31.jar
- ftb-teams-neoforge-2101.1.10.jar
- goblintraders-neoforge-1.21.1-1.11.2.jar
- Placebo-1.21.1-9.9.1.jar
- refurbished_furniture-neoforge-1.21.1-1.0.22.jar
- twilightforest-1.21.1-4.8.3345-universal.jar

## All mods found

| File | Source | Project ID | Version ID | Detected mod IDs |
| --- | --- | --- | --- | --- |
| 3d-armor-0.9.3-mod.jar | Modrinth | XhxKIfGG | rHnte31A | armor_3d, minecraft, entity_model_features |
| accessories-neoforge-1.1.0-beta.53+1.21.1.jar | Modrinth | jtmvUHXj | Fb55Fgjz | accessories, neoforge, minecraft, owo, accessories_compat_layer |
| accessorify-2.4.0-beta.5+1.21.1-neoforge.jar | Modrinth | CVRzrXGP | IuFUIaK4 | accessorify, accessories, fzzy_config, minecraft, neoforge, lambdynlights |
| AdvancementPlaques-1.21.1-neoforge-1.6.8.jar | Modrinth | 9NM0dXub | OWylG33I | advancementplaques, neoforge, minecraft, iceberg, prism, toastcontrol |
| ae2wtlib-19.4.1.jar | Modrinth | pNabrMMw | JZs5lgpV | ae2wtlib, ae2wtlib_api, ae2, curios, extendedae, megacells |
| animatica-0.6.1+1.21.jar | Modrinth | PRN43VSY | LHBm6fEV | animatica |
| Apotheosis-1.21.1-8.5.2.jar | Unresolved/local hosted |  |  | apotheosis, minecraft, neoforge, placebo, apothic_attributes, apothic_spawners, apothic_enchanting, curios, gateways |
| ApothicAttributes-1.21.1-2.9.1.jar | Unresolved/local hosted |  |  | apothic_attributes, minecraft, neoforge, placebo |
| ApothicEnchanting-1.21.1-1.5.2.jar | Unresolved/local hosted |  |  | apothic_enchanting, minecraft, neoforge, placebo, apothic_attributes |
| ApothicSpawners-1.21.1-1.3.4.jar | Unresolved/local hosted |  |  | apothic_spawners, minecraft, neoforge, placebo |
| appleskin-neoforge-mc1.21-3.0.9.jar | Modrinth | EsAfCjCV | uAKA6Laj | appleskin, neoforge |
| appliedcreate-1.21.1-1.1.4.jar | Modrinth | XmZgyZzj | YEb1OoTX | appliedcreate, neoforge, minecraft, create, kotlinforforge, ae2, jei, ae2jeiintegration, configured, extendedae, advanced_ae |
| appliedenergistics2-19.2.17.jar | Modrinth | XxWD5pD3 | kfyIqgJ6 | ae2, neoforge, minecraft, guideme, emi, theoneprobe, jade, vanillafix |
| architectury-13.0.8-neoforge.jar | Modrinth | lhGA9TYQ | ZxYGwlk0 | architectury, minecraft, neoforge |
| ArmorStatues-v21.1.0-1.21.1-NeoForge.jar | Modrinth | bbGCtEvb | SGpwIu7v | armorstatues, neoforge, minecraft, puzzleslib, statuemenus |
| ars_nouveau-1.21.1-5.11.3.jar | Modrinth | TKB6INcv | BmGGrC9A | ars_nouveau, neoforge, curios, geckolib, jei |
| athena-neoforge-1.21-4.0.3.jar | Modrinth | b1ZV3DIJ | VkHA9rmF | athena, neoforge, minecraft |
| balm-neoforge-1.21.1-21.0.56.jar | Modrinth | MBAkmtvl | Yoii3Xj6 | balm, neoforge, minecraft |
| bellsandwhistles-0.4.7-1.21.1.jar | Modrinth | gJ5afkVv | w0mifib8 | bellsandwhistles, neoforge, minecraft, create |
| beltborne_lanterns-1.2.5-neoforge+1.21.1.jar | Modrinth | NUFDZAKS | 6pbCx85r | beltborne_lanterns, neoforge, minecraft, cloth_config, architectury |
| BetterAdvancements-NeoForge-1.21.1-0.4.3.21.jar | Modrinth | Q2OqKxDG | FjTYILOi | betteradvancements, neoforge, minecraft |
| betterdays-1.21.1-3.3.6.2-NEOFORGE.jar | Modrinth | tPLE214j | O3sUSfWA | betterdays, neoforge, minecraft, whitenoise |
| bigcontraptions-neoforge-1.0.jar | Modrinth | jv0UKGOX | F92BjGXG | bigcontraptions, neoforge, minecraft |
| bits_n_bobs-0.0.44.jar | Modrinth | T8bvmqVZ | XKDQlGJW | bits_n_bobs, neoforge, minecraft |
| bl_accessories_layer-1.2.2-neoforge+1.21.1.jar | Modrinth | geZ7ilkE | 217aqMLc | bl_accessories_layer, neoforge, minecraft, beltborne_lanterns, accessories |
| block_factorys_bosses-2.0.12-neo-1.21.1.jar | Modrinth | q2bV1Tm1 | ac2ec3Mz | block_factorys_bosses, neoforge, minecraft, geckolib |
| bwncr-neoforge-1.21.1-3.20.3.jar | Modrinth | lL2MtE37 | Vg54emzq | bwncr, minecraft |
| caelus-neoforge-7.0.1+1.21.1.jar | Modrinth | 40FYwb4z | KsfI4QsR | caelus, neoforge, minecraft |
| capes-1.5.4+1.21-fabric.jar | Modrinth | 89Wsn8GD | 6SzVPVR4 | capes |
| chatanimation-neoforge-1.21.1-1.1.3.jar | Modrinth | DnNYdJsx | fo7IaI89 | chatanimation, neoforge, minecraft |
| chattools-v2.4.2+1.21.1-neoforge.jar | Modrinth | pbnlOdwp | spskqjzz | chattools, minecraft, cloth_config, yet_another_config_lib_v3 |
| chipped-neoforge-1.21.1-4.0.2.jar | Modrinth | BAscRYKm | eqVowbGc | chipped, neoforge, minecraft, resourcefullib, athena, jei |
| citresewn_neopatcher-1.1.0-1.2.2.jar | Modrinth | yYE9h4iu | 9M6IhSgw |  |
| citresewn-1.2.2+1.21.jar | Modrinth | otVJckYQ | JUnP9V1A | citresewn |
| clientsort-neoforge-2.2.1+1.21.1.jar | Modrinth | K0AkAin6 | fnjD0SDF | clientsort, minecraft, neoforge, cloth-config |
| cloth-config-15.0.140-neoforge.jar | Modrinth | 9s6osm5g | izKINKFg | cloth_config, neoforge |
| Clumps-neoforge-1.21.1-19.0.0.1.jar | Modrinth | Wnxd13zP | jo7lDoK4 | clumps, neoforge, minecraft |
| collective-1.21.1-8.17.jar | Modrinth | e0M1UDsY | bmhlgYst | collective, minecraft |
| configurable-3.3.2+1.21.1-neoforge.jar | Modrinth | lGffrQ3O | orsct6Yu | neoforge, minecraft, configurable |
| connector-2.0.0-beta.12+1.21.1-full.jar | Modrinth | u58R1TMW | YCMXHxwl |  |
| ConnectorExtras-1.12.1+1.21.1.jar | Modrinth | FYpiwiBR | dgLCqZyo | connectorextras, neoforge, minecraft, connector |
| continuity-3.0.0+1.21.neoforge.jar | Modrinth | 1IjD5062 | eXGUs5sy | continuity, minecraft, connector, fabric_api |
| copperagebackport-neoforge-1.21.1-0.1.4.jar | Modrinth | a1llHwl4 | JEPUV1lF | copperagebackport, neoforge, minecraft |
| create_copper_and_zinc-2.0.0-neoforge-1.21.1.jar | Modrinth | aqYNR6rI | 1Z1LCW5Z | create_copper_and_zinc, minecraft, neoforge |
| create_hypertube-0.4.0-NEOFORGE.jar | Modrinth | ATDdrG1y | 8Tm1FSFi | create_hypertube, neoforge, create, betterthirdperson |
| create_jetpack-forge-5.1.2.jar | Modrinth | UbFnAd4l | 4Ndp4d21 | create_jetpack, neoforge, minecraft, kotlinforforge, create |
| create_ltab-3.8.6.jar | Modrinth | fUa6OtBG | hcAQXLu1 | create_ltab |
| create_structures_arise-174.47.46 Release-neoforge-1.21.1.jar | Modrinth | 9enMEvoc | BqB1xPS9 | create_structures_arise, neoforge, minecraft |
| create_things_and_misc-4.1.0-neoforge-1.21.1.jar | Modrinth | uWrs8XlB | ldIAxQ6C | create_things_and_misc, minecraft, neoforge |
| create_ultimate_factory-2.2.3-neoforge-1.21.1.jar | Modrinth | N9QToVpw | t5APrWmo | create_ultimate_factory, minecraft, neoforge |
| create-1.21.1-6.0.9.jar | Modrinth | LNytGWDc | n7NADxiG | create, neoforge, minecraft, flywheel, ponder, sodium, lithium, journeymap, xaeroworldmap, radium, palladium |
| createaddition-1.5.10.jar | Modrinth | kU1G12Nn | CP8Lhuwu | createaddition, neoforge, create, jei, computercraft, minecraft |
| createappliedkinetics-1.5.4-1.21.1.jar | Modrinth | mYGTCuZY | Sk7TlTkT | createappliedkinetics, neoforge, minecraft, create |
| createbicbit-forge-1.21.1-1.0.2B.jar | Modrinth | 16DuAG4k | 549nOFOk | create_bic_bit, neoforge, minecraft, create |
| createbigcannons-5.11.2+mc.1.21.1.jar | Modrinth | GWp4jCJj | mFWvbnn8 | createbigcannons, neoforge, minecraft, create, ritchiesprojectilelib, copycats, framedblocks, curios |
| create-central-kitchen-2.3.0.jar | Modrinth | btq68HMO | SpLHbsZw | create_central_kitchen, neoforge, minecraft, create, create_dragons_plus |
| CreateCompression-1.21.1-2.0.0.jar | Modrinth | bgEPzFnZ | Kk4MkVdu | createcompression, neoforge, minecraft |
| CreateCyberGoggles-1.21.1-7.3.0-NeoForge.jar | Modrinth | TlQAWQCY | ixJGcGvt | create_cyber_goggles, neoforge, minecraft, create |
| createdeco-2.1.2-1.21.1-neo.jar | Modrinth | sMvUb4Rb | k95JcfbJ | createdeco, neoforge, minecraft, create |
| createdieselgenerators-1.21.1-1.3.11.jar | Modrinth | ZM3tt6p1 | uxgzKkcD | createdieselgenerators, neoforge, minecraft, create |
| create-dragons-plus-1.8.7.jar | Modrinth | dzb1a5WV | C1pFgdCC | create_dragons_plus, neoforge, minecraft, create |
| create-enchantment-industry-2.3.0.jar | Modrinth | JWGBpFUP | o56ltpU3 | create_enchantment_industry, neoforge, minecraft, create, create_dragons_plus, touhou_little_maid |
| createhorsepower-1.21.1-1.1.0.jar | Modrinth | 9Qm19XSM | yj7NF0iZ | createhorsepower, neoforge, minecraft, create |
| create-new-age-1.1.7c+neoforge-mc1.21.1.jar | Modrinth | FTeXqI9v | eQ9rbApE | create_new_age, neoforge, minecraft, esl, create |
| createoreexcavation-1.21-1.6.8.jar | Modrinth | ResbpANg | tivxiPTo | createoreexcavation, neoforge, create, minecraft, kubejs, kubejs_create |
| createornithopterglider-1.0.3-1.21.1.jar | Modrinth | A30Sq5Gt | 6XWxygAb | createornithopterglider, neoforge, minecraft, create, curios, caelus |
| create-shimmer-1.2.8.jar | Modrinth | d7tBNLJP | CEcmJyuR | create_shimmer, neoforge, minecraft, create, create_dragons_plus, twilightforest, curios |
| createsifter-1.21.1-2.2.1.jar | Modrinth | r018adCw | hk3kHwCT | createsifter, neoforge, minecraft, create, mechanicals |
| cristellib-neoforge-1.21.1-3.0.3.jar | Modrinth | cl223EMc | JiCAbUWP | cristellib, neoforge, minecraft, t_and_t, expanded_ecosphere |
| crittersandcompanions-neoforge-1.21.1-2.3.4.jar | Modrinth | Yd4wb5wZ | a8zCwdaO | crittersandcompanions, geckolib, neoforge, minecraft |
| curios-neoforge-9.5.1+1.21.1.jar | Modrinth | vvuO3ImH | yohfFbgD | curios, neoforge, minecraft |
| cwb-neoforge-3.0.0+mc1.21.jar | Modrinth | ETlrkaYF | epixUL1j | cubes_without_borders, neoforge, minecraft |
| Design-n-Decor-1.21.1-2.1.0.jar | Modrinth | x49wilh8 | m6PCLHcp | dndecor, neoforge, minecraft, flywheel, ponder, create |
| discord_chat_mod-neoforge-1.21.1-2.6.2.jar | Modrinth | yIWYj2mo | GQi04Aka | discord_chat_mod, neoforge, minecraft |
| DistantHorizons-3.0.1-b-1.21.1.jar | Modrinth | uCdwusMi | VH8Pl4yr | distanthorizons, minecraft, neoforge |
| DnDesires-1.21.1-2.2d-BETA.jar | Modrinth | JmybsfWs | P4yXqsnw | dndesires, neoforge, minecraft, create |
| doubledoors-1.21.1-7.2.jar | Modrinth | JrvR9OHr | KgGapm4H | doubledoors, collective, minecraft |
| dungeons-and-taverns-v4.4.4.jar | Modrinth | tpehi7ww | BYUUUeZA |  |
| dynamic-fps-3.11.4+minecraft-1.21.0-neoforge.jar | Modrinth | LQ3K71Q1 | T238FZpQ | dynamic_fps, minecraft |
| easy-villagers-neoforge-1.21.1-1.1.41.jar | Modrinth | Kaov2qgi | I5zwUj7m | easy_villagers, neoforge, minecraft, jei, theoneprobe, jade |
| elevatorid-neoforge-1.21.1-1.11.4.jar | Modrinth | hi2dSXTu | NKEMiRIu | elevatorid, neoforge, minecraft |
| elytraslot-neoforge-9.0.2+1.21.1.jar | Modrinth | mSQF1NpT | RX6A02W1 | elytraslot, neoforge, minecraft, curios, caelus |
| enderchests-neoforge-1.21.1-1.0.jar | Modrinth | gxSiDoVF | h1wflNQi | enderchests, neoforge, shetiphiancore |
| endersdelight-1.2.0-1.21.1.jar | Modrinth | 2uEhdGKt | 62u9jbn9 | endersdelight, neoforge, minecraft, farmersdelight |
| endertanks-neoforge-1.21.1-1.0.jar | Modrinth | zZwEA08D | yMpTLwpa | endertanks, neoforge, shetiphiancore |
| ends_delight-2.5.1+neoforge.1.21.1.jar | Modrinth | yHN0njMr | YxSK1qNm | ends_delight, neoforge, minecraft, farmersdelight |
| enhancedblockentities-0.10.2+1.21.jar | Modrinth | OVuFYfre | HBZAPs3u | enhancedblockentities |
| entity_model_features_1.21-neoforge-3.0.10.jar | Modrinth | 4I1XuqiY | uysyqlsZ | entity_model_features, neoforge, minecraft, entity_texture_features |
| entity_texture_features_1.21-neoforge-7.0.8.jar | Modrinth | BVzZfTc1 | p7wtsUSV | entity_texture_features, neoforge, minecraft |
| entityculling-neoforge-1.9.5-mc1.21.1.jar | Modrinth | NNAgCjsB | DwB2BGbW | entityculling, minecraft, neoforge |
| escalated-1.2.1+create.6.0.8-mc.1.21.1-neoforge.jar | Modrinth | LyOBYG8Q | 6DNGSw3t | escalated, minecraft, create |
| Essential_1-3-10-8_neoforge_1-21-1.jar | Modrinth | k2ZPuTBm | L1fxDroJ |  |
| etched-5.0.1.jar | Modrinth | zi3Fnfmc | 4CyXy8q0 | etched, neoforge, minecraft |
| EternalNether-v21.1.3-1.21.1-NeoForge.jar | Modrinth | s6R4jmL8 | wfHip7bI | eternalnether, neoforge, minecraft, puzzleslib |
| ExplorersCompass-1.21.1-3.4.0-neoforge.jar | Modrinth | RV1qfVQ8 | hIJ2Ev1Q | explorerscompass, neoforge, minecraft |
| fabric-api-0.116.10+1.21.1.jar | Modrinth | P7dR8mSH | ID8pq1x1 | fabric-api |
| fabric-language-kotlin-1.13.0+kotlin.2.1.0.jar | Modrinth | Ha28R6CL | csX9r2wS | fabric-language-kotlin |
| fabrishot-1.14.1.jar | Modrinth | 3qsfQtE9 | HfdXLVRy | fabrishot |
| faewulf_lib-neoforge-1.21.1-1.3.2.jar | Modrinth | q4N9H96q | mXNQkPI9 | faewulf_lib, neoforge, minecraft |
| FallingTree-1.21.1-1.21.1.11.jar | Modrinth | Fb4jn8m6 | wxGXaJMA | fallingtree, forge, minecraft, cloth-config, neoforge |
| fancymenu_neoforge_3.8.1_MC_1.21.1.jar | Modrinth | Wq5SjeWM | iNWXxME7 | fancymenu, konkrete, melody, findme, drippyloadingscreen, fancy_entity_renderer, neoforge, minecraft |
| FantasticWings-v21.1.1-1.21.1-NeoForge.jar | Modrinth | iGEcTqwK | OYv2KbjN | fantasticwings, neoforge, minecraft, puzzleslib |
| FarmersDelight-1.21.1-1.2.11.jar | Modrinth | R2OftAxM | cYqC3svy | farmersdelight, neoforge, minecraft, crafttweaker |
| ferritecore-7.0.2-neoforge.jar | Modrinth | uXXizFIs | CnpoQxCx | ferritecore, neoforge, minecraft |
| forgified-fabric-api-0.116.7+2.2.0+1.21.1.jar | Modrinth | Aqlf1Shp | tIUhtT2C | fabric_api, neoforge, minecraft, forgified_fabric_api |
| forgivingvoid-neoforge-1.21.1-21.1.6.jar | Modrinth | 1vkzEZjE | bGYk63JI | forgivingvoid, neoforge, minecraft, balm |
| framework-neoforge-1.21.1-0.13.11.jar | Unresolved/local hosted |  |  | framework, neoforge, minecraft |
| friendsandfoes-neoforge-4.0.23+mc1.21.1.jar | Modrinth | BOCJKD49 | Z40Zq30r | friendsandfoes, neoforge, minecraft, yet_another_config_lib_v3, resourcefullib |
| ftb-chunks-neoforge-2101.1.14.jar | Unresolved/local hosted |  |  | ftbchunks, neoforge, minecraft, architectury, ftblibrary, ftbteams, ftbbackups3 |
| ftb-essentials-neoforge-2101.1.9.jar | Unresolved/local hosted |  |  | ftbessentials, neoforge, minecraft, ftblibrary, ftbranks, luckperms |
| ftb-library-neoforge-2101.1.31.jar | Unresolved/local hosted |  |  | ftblibrary, neoforge, minecraft, architectury |
| ftb-teams-neoforge-2101.1.10.jar | Unresolved/local hosted |  |  | ftbteams, neoforge, minecraft, architectury, ftblibrary |
| fusion-1.2.12-neoforge-mc1.21.1.jar | Modrinth | p19vrgc2 | h2GrA0Ku | fusion, neoforge, minecraft |
| fzzy_config-0.7.6+1.21+neoforge.jar | Modrinth | hYykXjDp | MAPG6cXE | fzzy_config, neoforge, minecraft, kotlinforforge |
| geckolib-neoforge-1.21.1-4.8.4.jar | Modrinth | 8BmcQJ2H | gFmrC8Ru | geckolib, neoforge, minecraft, geckoanimfix |
| gliders-1.21.1-neoforge-1.1.8.jar | Modrinth | XiC6HzoU | XMduptKZ | vc_gliders, neoforge, minecraft, commonnetworking |
| glow_up-neoforge-1.2.1-1.21-1.21.1-neoforge.jar | Modrinth | iLlwyhcZ | Kq7Pl5EY | glow_up, neoforge, minecraft, architectury |
| goblintraders-neoforge-1.21.1-1.11.2.jar | Unresolved/local hosted |  |  | goblintraders, neoforge, minecraft, framework |
| gravestone-neoforge-1.21.1-1.0.35.jar | Modrinth | RYtXKJPr | AZm51eX1 | gravestone, neoforge, minecraft, jade |
| guideme-21.1.15.jar | Modrinth | Ck4E7v7R | ILW6vM7o | guideme, neoforge, minecraft |
| handcrafted-neoforge-1.21.1-4.0.3.jar | Modrinth | pJmCFF0p | JfqnpP2Z | handcrafted, neoforge, minecraft, resourcefullib |
| Iceberg-1.21.1-neoforge-1.3.2.jar | Modrinth | 5faXoLqX | IMssx9du | iceberg, neoforge, minecraft, advancementplaques, legendarytooltips, equipmentcompare, merchantmarkers, itemborders |
| IllagerInvasion-v21.1.6-1.21.1-NeoForge.jar | Modrinth | jSV9w0J5 | 9bEpNrvK | illagerinvasion, neoforge, minecraft, puzzleslib, extensibleenums |
| ImmediatelyFast-NeoForge-1.6.9+1.21.1.jar | Modrinth | 5ZwdcRci | 7TFPpGUU | immediatelyfast, neoforge, minecraft |
| Incendium_1.21.x_v5.4.4.jar | Modrinth | ZVzW5oNS | 7mVvV9Th | incendium, neoforge, minecraft, forge |
| interiors-1.21.1-neoforge-0.6.1.jar | Modrinth | r4Knci2k | gBrfZy6S | interiors, create |
| iris-neoforge-1.8.12+mc1.21.1.jar | Modrinth | YL57xq9U | t3ruzodq | iris, minecraft, embeddium, sodium |
| ironfurnaces-neoforge-1.21.1-4.3.2.jar | Modrinth | yPlaLxD1 | WZ25JeYB | ironfurnaces, neoforge, minecraft |
| Jade-1.21.1-NeoForge-15.10.5.jar | Modrinth | nvQzSEkH | yd8FKCmx | jade, neoforge |
| JadeAddons-1.21.1-NeoForge-6.1.0.jar | Modrinth | xuDOzCLy | Z9s9lM56 | jadeaddons, jade |
| jademoddedentities-neoforge-1.21.1-1.3.1.jar | Modrinth | GAJkSU0A | uOr842aM | jademoddedentities, neoforge, minecraft, jade, swem, swemaddendum |
| jamlib-neoforge-1.3.6+1.21.1.jar | Modrinth | IYY9Siz8 | n6UM6TcS | jamlib, neoforge, minecraft, architectury |
| jei-1.21.1-neoforge-19.27.0.340.jar | Modrinth | u6dRKJwZ | YAcQ6elZ | jei, neoforge, minecraft |
| jumpoverfences-neoforge-1.21.1-1.6.1.jar | Modrinth | 4HeIHvIP | g065XzyS | jumpoverfences, minecraft |
| justenoughbreeding-neoforge-1.21-1.21.1-1.6.2.jar | Modrinth | 9Pk89J3g | t8zTu5aD | justenoughbreeding, neoforge, minecraft |
| JustEnoughProfessions-neoforge-1.21.1-4.0.4.jar | Modrinth | kB56GtWA | jkUvORyF | justenoughprofessions, jei, neoforge, minecraft |
| JustEnoughResources-NeoForge-1.21.1-1.6.0.17.jar | Modrinth | uEfK2CXF | TgNFki8j | jeresources, jei |
| just-hammers-neoforge-21.1.4.jar | Modrinth | edU0NbZZ | SobtrAG5 | justhammers, neoforge, minecraft |
| justmobheads-1.21.1-8.5.jar | Modrinth | jzTUm9hE | tVPeAVbm | justmobheads, collective, minecraft, neoforge |
| justplayerheads-1.21.1-4.2.jar | Modrinth | YdVBZMNR | Bhim3m1a | justplayerheads, collective, minecraft |
| ketkets-furnicraft-4.4.jar | Modrinth | 7OgRKPcG | nqkLY3mr | mr_ketkets_furnicraft |
| konkrete_neoforge_1.9.9_MC_1.21.jar | Modrinth | J81TRJWm | stJDU839 | konkrete, neoforge, minecraft |
| kotlinforforge-5.10.0-all.jar | Modrinth | ordsPcFz | pp2cY80Q |  |
| languagereload-neoforge-1.21.1-1.0.2.jar | Modrinth | 4zpN0syd | qSdV3sEV | languagereload, neoforge, minecraft |
| LeaveMyBarsAlone-v21.1.2-1.21.1-NeoForge.jar | Modrinth | gK9mebQg | 27kYf7JI | leavemybarsalone, neoforge, minecraft, puzzleslib |
| lithium-neoforge-0.15.1+mc1.21.1.jar | Modrinth | gvQqBUqZ | G5SDYehn | lithium, minecraft |
| lootr-neoforge-1.21.1-1.11.37.118.jar | Modrinth | EltpO5cN | EB2B27qh | lootr, minecraft, neoforge |
| MagnumTorch-v21.1.1-1.21.1-NeoForge.jar | Modrinth | jorDmSKv | BZAhwo2r | magnumtorch, neoforge, minecraft, puzzleslib |
| main-menu-credits-1.2.0.jar | Modrinth | qJDfP7WN | eUN0SbET | isxander-main-menu-credits |
| mcw-bridges-3.1.2-mc1.21.1neoforge.jar | Modrinth | GURcjz8O | aQ7rY7ng | mcwbridges |
| mcw-doors-1.1.5-mc1.21.1neoforge.jar | Modrinth | kNxa8z3e | u7BRX44F | mcwdoors |
| mcw-furniture-3.4.1-mc1.21.1neoforge.jar | Modrinth | dtWC90iB | Z5V3Ps7S | mcwfurnitures |
| mcw-holidays-1.1.2-mc1.21.1neoforge.jar | Modrinth | rH20L2Lp | 2mO9Xhpt | mcwholidays |
| mcw-lights-1.1.5-mc1.21.1neoforge.jar | Modrinth | w4an97C2 | 5U2kQZIL | mcwlights |
| mcw-mcwfences-1.2.1-mc1.21.1neoforge.jar | Modrinth | GmwLse2I | jVdb0r4W | mcwfences |
| mcw-mcwpaths-1.1.1-mc1.21.1neoforge.jar | Modrinth | VRLhWB91 | tlymsxUG | mcwpaths |
| mcw-mcwstairs-1.0.2-mc1.21.1neoforge.jar | Modrinth | iP3wH1ha | 4t8L0dGP | mcwstairs |
| mcw-mcwwindows-2.4.2-mc1.21.1neoforge.jar | Modrinth | C7I0BCni | rQUE4LCz | mcwwindows |
| mcw-paintings-1.1.0-mc1.21.1neoforge.jar | Modrinth | okE6QVAY | W9QHKmDh | mcwpaintings |
| mcw-roofs-2.3.2-mc1.21.1neoforge.jar | Modrinth | B8jaH3P1 | jiXRXiSt | mcwroofs |
| mcw-trapdoors-1.1.5-mc1.21.1neoforge.jar | Modrinth | n2fvCDlM | StnP0RNi | mcwtrpdoors |
| mechanicals-1.21.1-1.1.0.jar | Modrinth | ProvjTA7 | z9HvpJMU | mechanicals, neoforge, minecraft, jei, kubejs |
| melody_neoforge_1.0.10_MC_1.21.jar | Modrinth | CVT4pFB2 | efcdRVZP | melody, neoforge, minecraft |
| midnightcontrols-neoforge-1.10.0.1.jar | Modrinth | bXX9h73M | oz41N6Dp | midnightcontrols, neoforge, minecraft, midnightlib |
| midnightlib-neoforge-1.9.2+1.21.1.jar | Modrinth | codAaoxh | Puk24qHu | midnightlib, neoforge, minecraft |
| modelfix-1.21-1.10.jar | Modrinth | QdG47OkI | X2U8ceG9 | modelfix, neoforge, minecraft |
| modernfix-neoforge-5.25.1+mc1.21.1.jar | Modrinth | nmDcB62a | 8Be8uJW6 | modernfix, neoforge, minecraft, jei |
| moogs_structures-1.1.0-1.21-1.21.1-neoforge.jar | Modrinth | 1oUDhxuy | mu01uYir | moogs_structures, minecraft |
| MoogsEndStructures-1.21-2.0.1.jar | Modrinth | r4PuRGfV | 66xhbndk | mes, moogs_structures |
| MoogsMissingVillages-1.21-2.0.0.jar | Modrinth | spZb29SD | Ovcslt8K | mmv |
| MoogsNetherStructures-1.21-2.0.31.jar | Modrinth | nGUXvjTa | zruwScWL | mns, moogs_structures |
| MoogsSoaringStructures-1.21-2.0.2.jar | Modrinth | RJCLIx7k | 5oeZ3VOH | mss, moogs_structures |
| MoogsTemplesReimagined-1.21-1.1.0.jar | Modrinth | UNanzCXS | FSSbRbVq | mtr, moogs_structures |
| MoogsVoyagerStructures-1.21-5.0.5.jar | Modrinth | OQAgZMH1 | aHamoWna | mvs, moogs_structures |
| moonlight-1.21-2.29.29-neoforge.jar | Modrinth | twkfQtEc | QiGuwr5v | moonlight, neoforge, minecraft |
| morechathistory-1.3.1.jar | Modrinth | 8qkXwOnk | 3siYJiWG | morechathistory |
| moreculling-neoforge-1.21.1-1.0.6.jar | Modrinth | 51shyZVL | 2w0zNJb4 | moreculling, neoforge, minecraft, cloth_config, sodium |
| MouseTweaks-neoforge-mc1.21-2.26.1.jar | Modrinth | aC3cM3Vq | 9I21YYxf | mousetweaks |
| NaturesCompass-1.21.1-3.4.0-neoforge.jar | Modrinth | fPetb5Kh | nFniEtJV | naturescompass, neoforge, minecraft |
| neruina-3.2.2+1.21.1-neoforge.jar | Modrinth | 1s5x833P | OxKKVPvK | neoforge, minecraft, configurable, neruina |
| NoChatReports-NEOFORGE-1.21.1-v2.9.1.jar | Modrinth | qQyHxfxd | ZV8eL55E | nochatreports, neoforge, minecraft |
| Nullscape_1.21.x_v1.2.14.jar | Modrinth | LPjGiSO4 | 3fv8O3xX | nullscape, neoforge, minecraft, forge |
| ObsidianUI-neoforge-0.2.9+mc1.21.1.jar | Modrinth | E0L8mfJZ | UzYZy4w6 | obsidianui, neoforge, minecraft |
| optigui-2.3.0-beta.6+1.21.jar | Modrinth | JuksLGBQ | rPLGSp71 | optigui |
| owo-lib-neoforge-0.12.15.5-beta.1+1.21.jar | Modrinth | ccKDOlHs | NMCHU6DZ | owo, neoforge, minecraft, fabric_api |
| paginatedadvancements-2.5.1.jar | Modrinth | pJogNFap | fQnpir9a | paginatedadvancements |
| piggyback-neoforge-1.21.1-1.1.1.jar | Modrinth | yP77bAiA | zBNKQZnP | piggyback, neoforge, minecraft, faewulf_lib |
| Ping-Wheel-1.12.1-neoforge-1.21.1.jar | Modrinth | QQXAdCzh | Ayj3A9qT | pingwheel, neoforge, minecraft |
| pipez-neoforge-1.21.1-1.2.19.jar | Modrinth | iRmWy6ga | z20ZR1YE | pipez, neoforge, minecraft, mekanism, jei, theoneprobe, jade |
| Placebo-1.21.1-9.9.1.jar | Unresolved/local hosted |  |  | placebo, minecraft, neoforge |
| Platform-neoforge-1.21.1-1.3.jar | Modrinth | i6fiqm5y | XGtKmpbq | platform, neoforge, minecraft |
| player-animation-lib-forge-2.0.4+1.21.1.jar | Modrinth | gedNE4y2 | HJZB6bmA | playeranimator, minecraft |
| polymorph-neoforge-1.1.0+1.21.1.jar | Modrinth | tagwiZkJ | VEburL70 | polymorph, neoforge, minecraft |
| polytone-1.21-3.6.1-neoforge.jar | Modrinth | 3qAYkBMB | Huc1qTUT | polytone, neoforge, minecraft |
| PuzzlesLib-v21.1.39-1.21.1-NeoForge.jar | Modrinth | QAGBst4M | EgWWSAhJ | puzzleslib, neoforge, minecraft |
| ranged_weapon_api-neoforge-2.3.3+1.21.1.jar | Modrinth | AqaIIO6D | 6wUNDbSa | ranged_weapon_api, neoforge, minecraft |
| rechiseled_chipped-2.0-1.21.1.jar | Modrinth | ryYcxeeA | UEdISMbk | rechiseled_chipped, neoforge, minecraft, chipped, rechiseled |
| rechiseled-1.2.4-neoforge-mc1.21.jar | Modrinth | B0g2vT6l | b3uurWWs | rechiseled, neoforge, minecraft, supermartijn642corelib, supermartijn642configlib, fusion |
| rechiseledae2-neoforge-1.21-1.21.1-1.0.0.jar | Modrinth | sDBUwZVY | QyElNsOO | rechiseledae2, neoforge, minecraft, ae2, rechiseled |
| rechiseledcreate-1.1.0-neoforge-mc1.21.jar | Modrinth | E6867niZ | TzPaH8MY | rechiseledcreate, neoforge, minecraft, supermartijn642corelib, rechiseled, create |
| reeses-sodium-options-neoforge-1.8.3+mc1.21.4.jar | Modrinth | Bh37bMuy | xAiCe6w8 | reeses_sodium_options, minecraft, sodium |
| refurbished_furniture-neoforge-1.21.1-1.0.22.jar | Unresolved/local hosted |  |  | refurbished_furniture, neoforge, minecraft, framework |
| resourcefullib-neoforge-1.21-3.0.12.jar | Modrinth | G1hIVOrD | x99nCLTm | resourcefullib, neoforge, minecraft |
| Ribbits-1.21.1-NeoForge-4.1.6.jar | Modrinth | 8YcE8y4T | XrUKaWrw | ribbits, minecraft, neoforge, yungsapi, geckolib |
| rightclickharvest-neoforge-4.6.1+1.21.1.jar | Modrinth | Cnejf5xM | djt0zS53 | rightclickharvest, neoforge, minecraft, architectury, jamlib |
| ritchiesprojectilelib-2.1.2+mc.1.21.1-neoforge.jar | Modrinth | B3pb093D | hZ6B2Z0x | ritchiesprojectilelib, neoforge, minecraft |
| RyoamicLights-neoforge-0.2.11+mc1.21.1.jar | Modrinth | reCfnRvJ | tApwsw9C | ryoamiclights, neoforge, minecraft, obsidianui |
| sawmill-1.21-1.7.2-neoforge.jar | Modrinth | WRaRZdTd | J9bHjnTh | sawmill, neoforge, minecraft, moonlight |
| shetiphiancore-neoforge-1.21.1-1.1.jar | Modrinth | oX7uP2kS | qWurdalj | shetiphiancore, neoforge |
| skinlayers3d-neoforge-1.11.1-mc1.21.1.jar | Modrinth | zV5r3pPn | lWa5oHuK | skinlayers3d, minecraft, neoforge |
| SkniroFurniture-1.5.0-1.21.1-NeoForge.jar | Modrinth | pezpt98N | 3p5JPoG1 | skniro_furniture, neoforge, minecraft |
| sliceanddice-forge-4.2.4.jar | Modrinth | GmjmRQ0A | tyVnEa75 | sliceanddice, neoforge, minecraft, kotlinforforge, create, create_enchantment_industry |
| smallernetherportals-1.21.1-3.9.jar | Modrinth | fYAofsi6 | ZAbiGvCu | smallernetherportals, collective, minecraft |
| smallships-neoforge-1.21.1-2.0.0-b2.1.jar | Modrinth | rGWEHQrP | 6poGZvvr | smallships, neoforge, minecraft |
| sodium-extra-neoforge-0.6.0+mc1.21.1.jar | Modrinth | PtjYWJkn | pFmw1eci | sodium_extra, minecraft, sodium |
| sodium-neoforge-0.6.13+mc1.21.1.jar | Modrinth | AANobbMI | Pb3OXVqC | sodium, minecraft, neoforge, embeddium |
| sophisticatedbackpacks-1.21.1-3.25.39.1665.jar | Modrinth | TyCTlI4b | hNjmoOoG | sophisticatedbackpacks, sophisticatedcore, neoforge, minecraft |
| sophisticatedcore-1.21.1-1.4.23.1664.jar | Modrinth | nmoqTijg | TZgOfdXu | sophisticatedcore, neoforge, minecraft |
| sophisticatedstorage-1.21.1-1.5.36.1606.jar | Modrinth | hMlaZH8f | z4dOybFC | sophisticatedstorage, sophisticatedcore, jei, neoforge, minecraft |
| sophisticatedstoragecreateintegration-1.21.1-0.1.14.98.jar | Modrinth | MJ0hdevs | g1GUAckO | sophisticatedstoragecreateintegration, sophisticatedstorage, create, jei, neoforge, minecraft |
| Stellarity-3.0.6.1.jar | Modrinth | bZgeDzN8 | csfOSC32 | stellarity, forge, minecraft, neoforge |
| storage-drawers-create-compat-1.0.1.jar | Modrinth | c8JYP4m3 | akK0oNH8 |  |
| StorageDrawers-neoforge-1.21.1-13.11.4.jar | Modrinth | guitPqEi | px0CCB06 | storagedrawers, minecraft, neoforge |
| structure_pool_api-neoforge-1.2.1+1.21.1.jar | Modrinth | LrYZi08Q | kdWVYKdx | structure_pool_api, neoforge, minecraft |
| supermartijn642configlib-1.1.8-neoforge-mc1.21.jar | Modrinth | LN9BxssP | qKL9jM75 | supermartijn642configlib, neoforge, minecraft |
| supermartijn642corelib-1.1.21-neoforge-mc1.21.jar | Modrinth | rOUBggPv | hcYSe7v7 | supermartijn642corelib, neoforge, minecraft |
| t_and_t-neoforge-fabric-1.13.7+1.21.1.jar | Modrinth | DjLobEOy | E4Wy3O8Y | t_and_t, neoforge, minecraft, cristellib |
| TaxFreeLevels-1.4.7-neoforge-1.21.1.jar | Modrinth | jCBrrLTs | eD8qmM43 | taxfreelevels, neoforge, minecraft, cloth_config |
| tf_dnv-2.0.3.jar | Modrinth | eDeSn4Ds | A9TVfJO0 | tf_dnv, neoforge, minecraft, twilightforest |
| TF_Lost_Blocks-1.21.1-1.5.0.jar | Modrinth | TyYh3b27 | f64pR8Je | tflostblocks, neoforge, minecraft, twilightforest |
| tfmg-1.2.0.jar | Modrinth | USgVjXsk | uDi14nbt | tfmg, neoforge, minecraft, create |
| TravelersTitles-1.21.1-NeoForge-5.1.3.jar | Modrinth | JtifUr64 | 2y01mBUy | travelerstitles, minecraft, neoforge, yungsapi |
| twilightdelight-3.1.1.jar | Modrinth | d6cSefpO | 6liLIVca | twilightdelight, neoforge, minecraft, farmersdelight, twilightforest |
| twilightforest-1.21.1-4.8.3345-universal.jar | Unresolved/local hosted |  |  | twilightforest, neoforge, minecraft |
| TwilightTreehouses-1.0.2-1.21.1-neoforge.jar | Modrinth | lkU3QIjf | AYZoDZat | twilight_treehouses, neoforge, minecraft |
| VanillaBackport-neoforge-1.21.1-1.1.6.3.jar | Modrinth | 6xwxDTgf | TJ1RI2mA | vanillabackport, neoforge, minecraft, platform |
| voicechat-neoforge-1.21.1-2.6.16.jar | Modrinth | 9eGKb6K1 | rGX4hrtP | voicechat, voicechat_api, neoforge, minecraft, cloth_config |
| waystones-neoforge-1.21.1-21.1.29.jar | Modrinth | LOpKHB2A | Ayolso4x | waystones, neoforge, minecraft, balm |
| WI-Zoom-1.6-MC1.21.1-NeoForge.jar | Modrinth | o7DitHWP | NBm3hI80 | wi_zoom, neoforge, minecraft |
| xaerominimap-neoforge-1.21.1-25.3.10.jar | Modrinth | 1bokaNcj | CatMvRfN | xaerominimap, neoforge, minecraft, openpartiesandclaims, xaeroworldmap, xaerolib |
| xaeroworldmap-neoforge-1.21.1-1.40.11.jar | Modrinth | NcUtCpym | arbQPyvf | xaeroworldmap, neoforge, minecraft, openpartiesandclaims, xaerominimap, xaerobetterpvp, xaerolib |
| xmxw-2.7.5+1.21.1-neoforge.jar | Modrinth | iv2jCzkP | 35ayTy2t | xmxw, neoforge, minecraft, waystones, balm, yet_another_config_lib_v3 |
| yet_another_config_lib_v3-3.8.1+1.21.1-neoforge.jar | Modrinth | 1eAoo2KR | h8Px82QV | yet_another_config_lib_v3, neoforge, minecraft |
| YungsApi-1.21.1-NeoForge-5.1.6.jar | Modrinth | Ua7DFN59 | ZB22DE9q | yungsapi, minecraft, neoforge |
| YungsBetterCaves-1.21.1-NeoForge-3.1.4.jar | Modrinth | Dfu00ggU | ygKiHadA | bettercaves, minecraft, neoforge, yungsapi |
| YungsBetterDesertTemples-1.21.1-NeoForge-4.1.5.jar | Modrinth | XNlO7sBv | GQ9iNWkI | betterdeserttemples, minecraft, neoforge, yungsapi |
| YungsBetterDungeons-1.21.1-NeoForge-5.1.4.jar | Modrinth | o1C1Dkj5 | D6aZn0Em | betterdungeons, minecraft, neoforge, yungsapi |
| YungsBetterEndIsland-1.21.1-NeoForge-3.1.2.jar | Modrinth | 2BwBOmBQ | I52NZ1qK | betterendisland, minecraft, neoforge, yungsapi |
| YungsBetterJungleTemples-1.21.1-NeoForge-3.1.2.jar | Modrinth | z9Ve58Ih | P00i2hJn | betterjungletemples, minecraft, neoforge, yungsapi |
| YungsBetterMineshafts-1.21.1-NeoForge-5.1.1.jar | Modrinth | HjmxVlSr | Go3nbneL | bettermineshafts, minecraft, neoforge, yungsapi |
| YungsBetterNetherFortresses-1.21.1-NeoForge-3.1.5.jar | Modrinth | Z2mXHnxP | iopJiJQp | betterfortresses, minecraft, neoforge, yungsapi |
| YungsBetterOceanMonuments-1.21.1-NeoForge-4.1.2.jar | Modrinth | 3dT9sgt4 | yFjEcj2g | betteroceanmonuments, minecraft, neoforge, yungsapi |
| YungsBetterStrongholds-1.21.1-NeoForge-5.1.3.jar | Modrinth | kidLKymU | 8U0dIfSM | betterstrongholds, minecraft, neoforge, yungsapi |
| YungsBetterWitchHuts-1.21.1-NeoForge-4.1.1.jar | Modrinth | t5FRdP87 | AvedwcIe | betterwitchhuts, minecraft, neoforge, yungsapi |
| YungsBridges-1.21.1-NeoForge-5.1.1.jar | Modrinth | Ht4BfYp6 | urkCzBf6 | yungsbridges, minecraft, neoforge, yungsapi |
| YungsExtras-1.21.1-NeoForge-5.1.1.jar | Modrinth | ZYgyPyfq | N2EpMhR7 | yungsextras, minecraft, neoforge, yungsapi |
| YungsMenuTweaks-1.21.1-NeoForge-2.1.2.jar | Modrinth | Hcy2DFKF | OB9hQTpQ | yungsmenutweaks, minecraft, neoforge, yungsapi |

## Files included in pack index

- config/.puzzle_cache/mojangstudios.png
- config/accessories.json5
- config/accessories_compat.json5
- config/accessorify/client_config.toml
- config/accessorify/config.toml
- config/advancementplaques.toml
- config/ae2-client.toml
- config/ae2-common.toml
- config/ae2wtlib.toml
- config/animatica.properties
- config/apotheosis/apotheosis.cfg
- config/apotheosis/apothic_attributes.cfg
- config/apotheosis/apothic_enchanting.cfg
- config/apotheosis/enchantments.cfg
- config/apotheosis/name_generation.cfg
- config/apothic_spawners.cfg
- config/appleskin-client.toml
- config/appliedcreate-server.toml
- config/archers/effects.json
- config/archers/equipment.json
- config/archers/tweaks.json
- config/archers/villages.json
- config/armorstatues-client.toml
- config/armory_rpgs/effects.json
- config/armory_rpgs/equipment_v3.json
- config/ars_nouveau/doc_data.json
- config/ars_nouveau/glyph_accelerate.toml
- config/ars_nouveau/glyph_amplify.toml
- config/ars_nouveau/glyph_animate_block.toml
- config/ars_nouveau/glyph_aoe.toml
- config/ars_nouveau/glyph_blink.toml
- config/ars_nouveau/glyph_bounce.toml
- config/ars_nouveau/glyph_break.toml
- config/ars_nouveau/glyph_bubble.toml
- config/ars_nouveau/glyph_burst.toml
- config/ars_nouveau/glyph_cold_snap.toml
- config/ars_nouveau/glyph_conjure_water.toml
- config/ars_nouveau/glyph_craft.toml
- config/ars_nouveau/glyph_crush.toml
- config/ars_nouveau/glyph_cut.toml
- config/ars_nouveau/glyph_dampen.toml
- config/ars_nouveau/glyph_decelerate.toml
- config/ars_nouveau/glyph_delay.toml
- config/ars_nouveau/glyph_dispel.toml
- config/ars_nouveau/glyph_duration_down.toml
- config/ars_nouveau/glyph_ender_inventory.toml
- config/ars_nouveau/glyph_evaporate.toml
- config/ars_nouveau/glyph_exchange.toml
- config/ars_nouveau/glyph_explosion.toml
- config/ars_nouveau/glyph_extend_time.toml
- config/ars_nouveau/glyph_extract.toml
- config/ars_nouveau/glyph_fangs.toml
- config/ars_nouveau/glyph_fell.toml
- config/ars_nouveau/glyph_firework.toml
- config/ars_nouveau/glyph_flare.toml
- config/ars_nouveau/glyph_fortune.toml
- config/ars_nouveau/glyph_freeze.toml
- config/ars_nouveau/glyph_glide.toml
- config/ars_nouveau/glyph_gravity.toml
- config/ars_nouveau/glyph_grow.toml
- config/ars_nouveau/glyph_gust.toml
- config/ars_nouveau/glyph_harm.toml
- config/ars_nouveau/glyph_harvest.toml
- config/ars_nouveau/glyph_heal.toml
- config/ars_nouveau/glyph_hex.toml
- config/ars_nouveau/glyph_ignite.toml
- config/ars_nouveau/glyph_infuse.toml
- config/ars_nouveau/glyph_intangible.toml
- config/ars_nouveau/glyph_interact.toml
- config/ars_nouveau/glyph_invisibility.toml
- config/ars_nouveau/glyph_launch.toml
- config/ars_nouveau/glyph_leap.toml
- config/ars_nouveau/glyph_light.toml
- config/ars_nouveau/glyph_lightning.toml
- config/ars_nouveau/glyph_linger.toml
- config/ars_nouveau/glyph_name.toml
- config/ars_nouveau/glyph_orbit.toml
- config/ars_nouveau/glyph_pantomime.toml
- config/ars_nouveau/glyph_phantom_block.toml
- config/ars_nouveau/glyph_pickup.toml
- config/ars_nouveau/glyph_pierce.toml
- config/ars_nouveau/glyph_place_block.toml
- config/ars_nouveau/glyph_prestidigitation.toml
- config/ars_nouveau/glyph_projectile.toml
- config/ars_nouveau/glyph_pull.toml
- config/ars_nouveau/glyph_randomize.toml
- config/ars_nouveau/glyph_redstone_signal.toml
- config/ars_nouveau/glyph_rotate.toml
- config/ars_nouveau/glyph_rune.toml
- config/ars_nouveau/glyph_self.toml
- config/ars_nouveau/glyph_sense_magic.toml
- config/ars_nouveau/glyph_sensitive.toml
- config/ars_nouveau/glyph_slowfall.toml
- config/ars_nouveau/glyph_smelt.toml
- config/ars_nouveau/glyph_snare.toml
- config/ars_nouveau/glyph_split.toml
- config/ars_nouveau/glyph_summon_decoy.toml
- config/ars_nouveau/glyph_summon_steed.toml
- config/ars_nouveau/glyph_summon_undead.toml
- config/ars_nouveau/glyph_summon_vex.toml
- config/ars_nouveau/glyph_summon_wolves.toml
- config/ars_nouveau/glyph_toss.toml
- config/ars_nouveau/glyph_touch.toml
- config/ars_nouveau/glyph_underfoot.toml
- config/ars_nouveau/glyph_wall.toml
- config/ars_nouveau/glyph_wind_burst.toml
- config/ars_nouveau/glyph_wind_shear.toml
- config/ars_nouveau/glyph_wither.toml
- config/ars_nouveau/reset.toml
- config/ars_nouveau/rewind.toml
- config/ars_nouveau/search_index/_14.cfe
- config/ars_nouveau/search_index/_14.cfs
- config/ars_nouveau/search_index/_14.si
- config/ars_nouveau/search_index/segments_15
- config/ars_nouveau/search_index/write.lock
- config/ars_nouveau/wololo.toml
- config/ars_nouveau-client.toml
- config/ars_nouveau-common.toml
- config/ars_nouveau-server.toml
- config/ars_nouveau-startup.toml
- config/arsenal/effects.json
- config/arsenal/equipment_v2.json
- config/arsenal/ranged_weapons.json
- config/arsenal/shields.json
- config/beltborne_lanterns.json
- config/beltborne_lanterns_lamps.json
- config/betteradvancements-client.toml
- config/betteranimationscollection-client.toml
- config/bettercaves/neoforge-1_21_1/liquidregions.json
- config/bettercaves/neoforge-1_21_1/README.txt
- config/bettercaves/README.txt
- config/betterdays-client.toml
- config/betterdays-common.toml
- config/betterdeserttemples/neoforge-1_21/armorstands.json
- config/betterdeserttemples/neoforge-1_21/itemframes.json
- config/betterdeserttemples/neoforge-1_21/README.txt
- config/betterdeserttemples/README.txt
- config/betterdeserttemples-neoforge-1_21.toml
- config/betterdungeons-neoforge-1_21.toml
- config/betterendisland-neoforge-1_21.toml
- config/betterfortresses/neoforge-1_21/itemframes.json
- config/betterfortresses/neoforge-1_21/README.txt
- config/betterfortresses/README.txt
- config/betterfortresses-neoforge-1_21.toml
- config/betterjungletemples-neoforge-1_21.toml
- config/bettermineshafts-neoforge-1_21.toml
- config/bettermodsbutton-client.toml
- config/betteroceanmonuments-neoforge-1_21.toml
- config/betterstrongholds/neoforge-1_21/armorstands.json
- config/betterstrongholds/neoforge-1_21/itemframes.json
- config/betterstrongholds/neoforge-1_21/ores.json
- config/betterstrongholds/neoforge-1_21/rareblocks.json
- config/betterstrongholds/neoforge-1_21/README.txt
- config/betterstrongholds/README.txt
- config/betterstrongholds-neoforge-1_21.toml
- config/betterwitchhuts-neoforge-1_21.toml
- config/bits_n_bobs-common.toml
- config/bits_n_bobs-server.toml
- config/bl_accessories_layer.json
- config/bosses_rise_config.client.toml
- config/bosses_rise_config.toml
- config/bwncr-common.toml
- config/capes.json5
- config/carryon-client.toml
- config/carryon-common.toml
- config/chat_tools.json
- config/chatanimation.json
- config/citresewn.json
- config/citresewn-defaults.json
- config/clientsort.json
- config/clientsort-server.json
- config/collective.json5
- config/connector.json
- config/connectorextras_energy_bridge-common.toml
- config/continuity.json
- config/copperagebackport.json
- config/create_bitterballen.toml
- config/create_central_kitchen-client.toml
- config/create_central_kitchen-common.toml
- config/create_dragons_plus-client.toml
- config/create_dragons_plus-common.toml
- config/create_dragons_plus-server.toml
- config/create_enchantment_industry-client.toml
- config/create_enchantment_industry-server.toml
- config/create_hypertube-client.toml
- config/create_hypertube-server.toml
- config/create_jetpack-client.toml
- config/create_jetpack-common.toml
- config/create_new_age-client.toml
- config/create_new_age-common.toml
- config/create_shimmer-client.toml
- config/create_shimmer-server.toml
- config/createaddition-common.toml
- config/createappliedkinetics-common.toml
- config/createbigcannons-client.toml
- config/createbigcannons-server.toml
- config/create-client.toml
- config/create-common.toml
- config/createcompression-common.toml
- config/createdieselgenerators-client.toml
- config/createdieselgenerators-common.toml
- config/createdieselgenerators-server.toml
- config/createhorsepower-server.toml
- config/createoreexcavation-common.toml
- config/createoreexcavation-server.toml
- config/create-server.toml
- config/createsifter-client.toml
- config/createsifter-server.toml
- config/create-stuff-additions.toml
- config/cristellib/ae2/structure_placement_config.json5
- config/cristellib/ae2/structure_toggle_config.json5
- config/cristellib/apotheosis/structure_placement_config.json5
- config/cristellib/apotheosis/structure_toggle_config.json5
- config/cristellib/ars_nouveau/structure_placement_config.json5
- config/cristellib/ars_nouveau/structure_toggle_config.json5
- config/cristellib/auto_config_settings.json5
- config/cristellib/betterdeserttemples/structure_toggle_config.json5
- config/cristellib/betterdungeons/structure_placement_config.json5
- config/cristellib/betterdungeons/structure_toggle_config.json5
- config/cristellib/betterfortresses/structure_toggle_config.json5
- config/cristellib/betterjungletemples/structure_toggle_config.json5
- config/cristellib/bettermineshafts/structure_placement_config.json5
- config/cristellib/bettermineshafts/structure_toggle_config.json5
- config/cristellib/betteroceanmonuments/structure_placement_config.json5
- config/cristellib/betteroceanmonuments/structure_toggle_config.json5
- config/cristellib/betterstrongholds/structure_toggle_config.json5
- config/cristellib/betterwitchhuts/structure_placement_config.json5
- config/cristellib/betterwitchhuts/structure_toggle_config.json5
- config/cristellib/block_factorys_bosses/structure_placement_config.json5
- config/cristellib/block_factorys_bosses/structure_toggle_config.json5
- config/cristellib/built_in_packs.json5
- config/cristellib/cataclysm/structure_placement_config.json5
- config/cristellib/cataclysm/structure_toggle_config.json5
- config/cristellib/create_ltab/structure_placement_config.json5
- config/cristellib/create_ltab/structure_toggle_config.json5
- config/cristellib/create_structures_arise/structure_placement_config.json5
- config/cristellib/create_structures_arise/structure_toggle_config.json5
- config/cristellib/druids/structure_placement_config.json5
- config/cristellib/druids/structure_toggle_config.json5
- config/cristellib/endersdelight/structure_placement_config.json5
- config/cristellib/endersdelight/structure_toggle_config.json5
- config/cristellib/eternalnether/structure_placement_config.json5
- config/cristellib/eternalnether/structure_toggle_config.json5
- config/cristellib/friendsandfoes/structure_placement_config.json5
- config/cristellib/friendsandfoes/structure_toggle_config.json5
- config/cristellib/illagerinvasion/structure_placement_config.json5
- config/cristellib/illagerinvasion/structure_toggle_config.json5
- config/cristellib/incendium/structure_placement_config.json5
- config/cristellib/incendium/structure_toggle_config.json5
- config/cristellib/mes/structure_toggle_config.json5
- config/cristellib/minecells/structure_placement_config.json5
- config/cristellib/minecells/structure_toggle_config.json5
- config/cristellib/mmv/structure_placement_config.json5
- config/cristellib/mmv/structure_toggle_config.json5
- config/cristellib/mns/structure_toggle_config.json5
- config/cristellib/mr_dungeons_andtaverns/structure_placement_config.json5
- config/cristellib/mr_dungeons_andtaverns/structure_toggle_config.json5
- config/cristellib/mss/structure_toggle_config.json5
- config/cristellib/mtr/structure_toggle_config.json5
- config/cristellib/mvs/structure_toggle_config.json5
- config/cristellib/nullscape/structure_placement_config.json5
- config/cristellib/nullscape/structure_toggle_config.json5
- config/cristellib/ribbits/structure_toggle_config.json5
- config/cristellib/stellarity/structure_placement_config.json5
- config/cristellib/stellarity/structure_toggle_config.json5
- config/cristellib/tf_dnv/structure_placement_config.json5
- config/cristellib/tf_dnv/structure_toggle_config.json5
- config/cristellib/twilight_treehouses/structure_placement_config.json5
- config/cristellib/twilight_treehouses/structure_toggle_config.json5
- config/cristellib/twilightforest/structure_toggle_config.json5
- config/crittersandcompanions-common.toml
- config/cubes_without_borders.json
- config/curios-client.toml
- config/curios-common.toml
- config/curios-server.toml
- config/discord_chat_mod-client.toml
- config/discord_chat_mod-common.toml
- config/DistantHorizons.toml
- config/dndecor-server.toml
- config/dndesires-client.toml
- config/dndesires-server.toml
- config/doubledoors.json5
- config/druids/effects_v0.json
- config/druids/equipment.json
- config/druids/tweaks.json
- config/dynamic_fps.json
- config/e4mc/e4mc.toml
- config/easy_villagers-client.toml
- config/easy_villagers-server.toml
- config/elevatorid-server.toml
- config/enderchests.toml
- config/enderchests-client.toml
- config/endersdelight-common.toml
- config/endertanks.toml
- config/endertanks-client.toml
- config/ends_delight-common.toml
- config/enhanced_bes.properties
- config/entity_model_features.json
- config/entity_texture_features.json
- config/entityculling.json
- config/escalated-server.toml
- config/etched-client.toml
- config/etched-server.toml
- config/etf_warnings.json
- config/explorerscompass-client.toml
- config/explorerscompass-common.toml
- config/fabric/indigo-renderer.properties
- config/fabrishot.properties
- config/fallingtree.json
- config/fancymenu/assets/avontuur.ogg
- config/fancymenu/assets/banaanpan_koning.ogg
- config/fancymenu/assets/blokjesavontuur.ogg
- config/fancymenu/assets/discord_icon.png
- config/fancymenu/assets/e_a_k_je_weet_wat_het_is.ogg
- config/fancymenu/assets/enderheld_jos.ogg
- config/fancymenu/assets/geen_makkertje.ogg
- config/fancymenu/assets/jos_in_de_string.ogg
- config/fancymenu/assets/jos_pickaxe.png
- config/fancymenu/assets/jos_yarno_avontuur.ogg
- config/fancymenu/assets/mac-icon.icns
- config/fancymenu/assets/main_menu.ogg
- config/fancymenu/assets/portal_in_water.ogg
- config/fancymenu/assets/terug_naar_smp.ogg
- config/fancymenu/assets/title.png
- config/fancymenu/assets/trio.ogg
- config/fancymenu/assets/waar_is_bart_nou_weer.ogg
- config/fancymenu/assets/weer_samen.ogg
- config/fancymenu/assets/window-icon.png
- config/fancymenu/assets/window-icon-small.png
- config/fancymenu/assets/yarno.png
- config/fancymenu/assets/yarno_de_hakker.ogg
- config/fancymenu/audio_element_controller_metas.json
- config/fancymenu/custom_gui_screens.txt
- config/fancymenu/customizablemenus.txt
- config/fancymenu/customization/join_multiplayer_screen_layout.txt
- config/fancymenu/customization/title_screen_layout.txt
- config/fancymenu/layout_editor/widgets/element_layer_control.lewidget
- config/fancymenu/legacy_checklist.txt
- config/fancymenu/options.txt
- config/fancymenu/slideshows/mySlideshow/images/background.png
- config/fancymenu/slideshows/mySlideshow/images/background2.png
- config/fancymenu/slideshows/mySlideshow/images/background3.png
- config/fancymenu/slideshows/mySlideshow/images/background4.png
- config/fancymenu/slideshows/mySlideshow/images/background5.png
- config/fancymenu/slideshows/mySlideshow/properties.txt
- config/fancymenu/ui_themes/dark.json
- config/fancymenu/ui_themes/light.json
- config/fancymenu/user_variables.db
- config/fancymenu/video_element_controller_metas.json
- config/fantasticwings-server.toml
- config/farmersdelight-client.toml
- config/farmersdelight-common.toml
- config/ferritecore-mixin.toml
- config/flywheel-client.toml
- config/fml.toml
- config/forgivingvoid-common.toml
- config/friendsandfoes.json
- config/ftbchunks-client.snbt
- config/ftbchunks-world.snbt
- config/ftbessentials.snbt
- config/ftblibrary-client.snbt
- config/ftbteams-server.snbt
- config/fzzy_config/keybinds.toml
- config/gamecontrollerdatabase.txt
- config/gazebo/villages.json
- config/glow_up.json
- config/goblintraders-entities.toml
- config/gravestone-client.toml
- config/gravestone-server.toml
- config/guideme.toml
- config/illagerinvasion-server.toml
- config/immediatelyfast.json
- config/iris.properties
- config/iris-excluded.json
- config/ironfurnaces-common.toml
- config/isxander-main-menu-credits.json
- config/jade/hide-blocks.json
- config/jade/hide-entities.json
- config/jade/jade.json
- config/jade/plugins.json
- config/jade/sort-order.json
- config/jamlib/known_suspicious_jars.txt
- config/jei/blacklist.json
- config/jei/ingredient-list-mod-sort-order.ini
- config/jei/ingredient-list-type-sort-order.ini
- config/jei/jei-client.ini
- config/jei/jei-colors.ini
- config/jei/jei-debug.ini
- config/jei/jei-mod-id-format.ini
- config/jei/recipe-category-sort-order.ini
- config/jei/world/server/EenAllesKanaal_SMP_923e663f/lookupHistory.json
- config/jei/world/server/Minecraft_Server_91d50b98/lookupHistory.json
- config/jei-server.toml
- config/jeresources-common.toml
- config/jewelry/items_v8.json
- config/jewelry/villages.json
- config/jumpoverfences-client.toml
- config/justhammers.json
- config/justmobheads.json5
- config/justmobheads/headchances.txt
- config/justplayerheads.json5
- config/konkrete/locals/de_de.local
- config/konkrete/locals/en_us.local
- config/konkrete/locals/pl_pl.local
- config/konkrete/locals/pt_br.local
- config/l2configs/l2core-client.toml
- config/languagereload-client.toml
- config/leavemybarsalone-client.toml
- config/lithium.properties
- config/lootr-client.toml
- config/lootr-common.toml
- config/magnumtorch-server.toml
- config/midnightcontrols.json
- config/midnightlib.json
- config/minecells/client.json5
- config/minecells/common.json5
- config/modelfix-client.toml
- config/modernfix-common.toml
- config/modernfix-mixins.properties
- config/moonlight-client.toml
- config/moonlight-common.toml
- config/more_rpg_classes/effects_v4.json
- config/more_rpg_classes/elemental_weaknesses.json
- config/more_rpg_classes/loot.json
- config/more_rpg_classes/tweaks_v2.json
- config/moreculling.toml
- config/MouseTweaks.cfg
- config/naturescompass-client.toml
- config/naturescompass-common.toml
- config/neoforge-client.toml
- config/neoforge-common.toml
- config/neoforge-common-1.toml.bak
- config/neoforge-server.toml
- config/neruina.json5
- config/NoChatReports/NCR-Client.json
- config/NoChatReports/NCR-Common.json
- config/NoChatReports/NCR-Encryption.json
- config/NoChatReports/NCR-ServerPreferences.json
- config/NoChatReports/README.md
- config/onlyhammersandexcavators-common.toml
- config/PaginatedAdvancements.json5
- config/paladins/effects.json
- config/paladins/equipment_v2.json
- config/paladins/shields.json
- config/paladins/tweaks.json
- config/paladins/villages.json
- config/piggyback.toml
- config/pingwheel.json
- config/pingwheel.server.json
- config/pipez-server.toml
- config/placebo.cfg
- config/ponder-client.toml
- config/punchy/punchy_config.json
- config/punchy/punchy_tuning.json
- config/puzzle.json
- config/refurbished_furniture.client.toml
- config/relics/effects.json
- config/relics/items_v2.json
- config/ribbits-neoforge-1_21_1.toml
- config/ribbits-options.json
- config/rightclickharvest.json5
- config/ritchiesprojectilelib-server.toml
- config/rogues/effects.json
- config/rogues/equipment_v3.json
- config/rogues/tweaks.json
- config/rogues/villages.json
- config/rpg_series/loot_equipment_v2.json
- config/rpg_series/loot_scrolls_v2.json
- config/rpg_series/tag_cache.json
- config/rrls.toml
- config/ryoamiclights.toml
- config/sawmill-common.toml
- config/shetiphiancore.toml
- config/shetiphiancore-client.toml
- config/skinlayers.json
- config/sliceanddice-client.toml
- config/sliceanddice-common.toml
- config/smallships-client.toml
- config/smallships-common.toml
- config/sodium-extra.properties
- config/sodium-extra-options.json
- config/sodium-fingerprint.json
- config/sodium-mixins.properties
- config/sodium-options.json
- config/sophisticatedbackpacks-common.toml
- config/sophisticatedbackpacks-server.toml
- config/sophisticatedcore-client.toml
- config/sophisticatedcore-common.toml
- config/sophisticatedstorage-client.toml
- config/sophisticatedstorage-common.toml
- config/sophisticatedstorage-server.toml
- config/spell_engine/client.json5
- config/spell_engine/elemental_weaknesses.json
- config/spell_engine/hud_config.json
- config/spell_engine/server.json5
- config/spell_engine/weapon_fallback.json
- config/spell_power/attributes.json
- config/storagedrawers-client.toml
- config/storagedrawers-common.v2.toml
- config/taxfreelevels.json
- config/tfmg-common.toml
- config/tfmg-server.toml
- config/towns_and_towers/structure_enable_or_disable_new.json5
- config/towns_and_towers/structure_rarity_new.json5
- config/transition.json
- config/travelerstitles-neoforge-1_21.toml
- config/trender.json
- config/twilightdelight-client.toml
- config/twilightdelight-server.toml
- config/twilightforest-client.toml
- config/twilightforest-common.toml
- config/vanilla_structures/placement_structure_config.json5
- config/vanilla_structures/toggle_structure_config.json5
- config/vanillabackport-client.toml
- config/vanillabackport-common.toml
- config/voicechat/category-volumes.properties
- config/voicechat/player-volumes.properties
- config/voicechat/translations.properties
- config/voicechat/username-cache.json
- config/voicechat/voicechat-client.properties
- config/voicechat/voicechat-server.properties
- config/waystones-common.toml
- config/whitenoise-client.toml
- config/wizards/effects.json
- config/wizards/equipment_v2.json
- config/wizards/tweaks.json
- config/wizards/villages.json
- config/xaero/lib/client.cfg
- config/xaero/lib/common.cfg
- config/xaero/lib/profiles/default.cfg
- config/xaero/lib/server_profiles/default.cfg
- config/xaero/minimap/client.cfg
- config/xaero/minimap/common.cfg
- config/xaero/minimap/default_radar_categories_client.json
- config/xaero/minimap/default_radar_categories_server.json
- config/xaero/minimap/profiles/default.cfg
- config/xaero/minimap/profiles/info_display_config/default.cfg.txt
- config/xaero/minimap/server_profiles/default.cfg
- config/xaero/world-map/client.cfg
- config/xaero/world-map/common.cfg
- config/xaero/world-map/profiles/default.cfg
- config/xaero/world-map/server_profiles/default.cfg
- config/xaerohud.txt
- config/xaeropatreon.txt
- config/xmxw.json
- config/yacl.json5
- config/yungsmenutweaks-neoforge-1_21.toml
- mods/3d-armor-0-9-3-mod.pw.toml
- mods/accessories-neoforge-1-1-0-beta-53-1-21-1.pw.toml
- mods/accessorify-2-4-0-beta-5-1-21-1-neoforge.pw.toml
- mods/advancementplaques-1-21-1-neoforge-1-6-8.pw.toml
- mods/ae2wtlib-19-4-1.pw.toml
- mods/animatica-0-6-1-1-21.pw.toml
- mods/Apotheosis-1.21.1-8.5.2.jar
- mods/ApothicAttributes-1.21.1-2.9.1.jar
- mods/ApothicEnchanting-1.21.1-1.5.2.jar
- mods/ApothicSpawners-1.21.1-1.3.4.jar
- mods/appleskin-neoforge-mc1-21-3-0-9.pw.toml
- mods/appliedcreate-1-21-1-1-1-4.pw.toml
- mods/appliedenergistics2-19-2-17.pw.toml
- mods/architectury-13-0-8-neoforge.pw.toml
- mods/armorstatues-v21-1-0-1-21-1-neoforge.pw.toml
- mods/ars-nouveau-1-21-1-5-11-3.pw.toml
- mods/athena-neoforge-1-21-4-0-3.pw.toml
- mods/balm-neoforge-1-21-1-21-0-56.pw.toml
- mods/bellsandwhistles-0-4-7-1-21-1.pw.toml
- mods/beltborne-lanterns-1-2-5-neoforge-1-21-1.pw.toml
- mods/betteradvancements-neoforge-1-21-1-0-4-3-21.pw.toml
- mods/betterdays-1-21-1-3-3-6-2-neoforge.pw.toml
- mods/bigcontraptions-neoforge-1-0.pw.toml
- mods/bits-n-bobs-0-0-44.pw.toml
- mods/bl-accessories-layer-1-2-2-neoforge-1-21-1.pw.toml
- mods/block-factorys-bosses-2-0-12-neo-1-21-1.pw.toml
- mods/bwncr-neoforge-1-21-1-3-20-3.pw.toml
- mods/caelus-neoforge-7-0-1-1-21-1.pw.toml
- mods/capes-1-5-4-1-21-fabric.pw.toml
- mods/chatanimation-neoforge-1-21-1-1-1-3.pw.toml
- mods/chattools-v2-4-2-1-21-1-neoforge.pw.toml
- mods/chipped-neoforge-1-21-1-4-0-2.pw.toml
- mods/citresewn-1-2-2-1-21.pw.toml
- mods/citresewn-neopatcher-1-1-0-1-2-2.pw.toml
- mods/clientsort-neoforge-2-2-1-1-21-1.pw.toml
- mods/cloth-config-15-0-140-neoforge.pw.toml
- mods/clumps-neoforge-1-21-1-19-0-0-1.pw.toml
- mods/collective-1-21-1-8-17.pw.toml
- mods/configurable-3-3-2-1-21-1-neoforge.pw.toml
- mods/connector-2-0-0-beta-12-1-21-1-full.pw.toml
- mods/connectorextras-1-12-1-1-21-1.pw.toml
- mods/continuity-3-0-0-1-21-neoforge.pw.toml
- mods/copperagebackport-neoforge-1-21-1-0-1-4.pw.toml
- mods/create-1-21-1-6-0-9.pw.toml
- mods/createaddition-1-5-10.pw.toml
- mods/createappliedkinetics-1-5-4-1-21-1.pw.toml
- mods/createbicbit-forge-1-21-1-1-0-2b.pw.toml
- mods/createbigcannons-5-11-2-mc-1-21-1.pw.toml
- mods/create-central-kitchen-2-3-0.pw.toml
- mods/createcompression-1-21-1-2-0-0.pw.toml
- mods/create-copper-and-zinc-2-0-0-neoforge-1-21-1.pw.toml
- mods/createcybergoggles-1-21-1-7-3-0-neoforge.pw.toml
- mods/createdeco-2-1-2-1-21-1-neo.pw.toml
- mods/createdieselgenerators-1-21-1-1-3-11.pw.toml
- mods/create-dragons-plus-1-8-7.pw.toml
- mods/create-enchantment-industry-2-3-0.pw.toml
- mods/createhorsepower-1-21-1-1-1-0.pw.toml
- mods/create-hypertube-0-4-0-neoforge.pw.toml
- mods/create-jetpack-forge-5-1-2.pw.toml
- mods/create-ltab-3-8-6.pw.toml
- mods/create-new-age-1-1-7c-neoforge-mc1-21-1.pw.toml
- mods/createoreexcavation-1-21-1-6-8.pw.toml
- mods/createornithopterglider-1-0-3-1-21-1.pw.toml
- mods/create-shimmer-1-2-8.pw.toml
- mods/createsifter-1-21-1-2-2-1.pw.toml
- mods/create-structures-arise-174-47-46-release-neoforge-1-21-1.pw.toml
- mods/create-things-and-misc-4-1-0-neoforge-1-21-1.pw.toml
- mods/create-ultimate-factory-2-2-3-neoforge-1-21-1.pw.toml
- mods/cristellib-neoforge-1-21-1-3-0-3.pw.toml
- mods/crittersandcompanions-neoforge-1-21-1-2-3-4.pw.toml
- mods/curios-neoforge-9-5-1-1-21-1.pw.toml
- mods/cwb-neoforge-3-0-0-mc1-21.pw.toml
- mods/design-n-decor-1-21-1-2-1-0.pw.toml
- mods/discord-chat-mod-neoforge-1-21-1-2-6-2.pw.toml
- mods/distanthorizons-3-0-1-b-1-21-1.pw.toml
- mods/dndesires-1-21-1-2-2d-beta.pw.toml
- mods/doubledoors-1-21-1-7-2.pw.toml
- mods/dungeons-and-taverns-v4-4-4.pw.toml
- mods/dynamic-fps-3-11-4-minecraft-1-21-0-neoforge.pw.toml
- mods/easy-villagers-neoforge-1-21-1-1-1-41.pw.toml
- mods/elevatorid-neoforge-1-21-1-1-11-4.pw.toml
- mods/elytraslot-neoforge-9-0-2-1-21-1.pw.toml
- mods/enderchests-neoforge-1-21-1-1-0.pw.toml
- mods/endersdelight-1-2-0-1-21-1.pw.toml
- mods/endertanks-neoforge-1-21-1-1-0.pw.toml
- mods/ends-delight-2-5-1-neoforge-1-21-1.pw.toml
- mods/enhancedblockentities-0-10-2-1-21.pw.toml
- mods/entityculling-neoforge-1-9-5-mc1-21-1.pw.toml
- mods/entity-model-features-1-21-neoforge-3-0-10.pw.toml
- mods/entity-texture-features-1-21-neoforge-7-0-8.pw.toml
- mods/escalated-1-2-1-create-6-0-8-mc-1-21-1-neoforge.pw.toml
- mods/essential-1-3-10-8-neoforge-1-21-1.pw.toml
- mods/etched-5-0-1.pw.toml
- mods/eternalnether-v21-1-3-1-21-1-neoforge.pw.toml
- mods/explorerscompass-1-21-1-3-4-0-neoforge.pw.toml
- mods/fabric-api-0-116-10-1-21-1.pw.toml
- mods/fabric-language-kotlin-1-13-0-kotlin-2-1-0.pw.toml
- mods/fabrishot-1-14-1.pw.toml
- mods/faewulf-lib-neoforge-1-21-1-1-3-2.pw.toml
- mods/fallingtree-1-21-1-1-21-1-11.pw.toml
- mods/fancymenu-neoforge-3-8-1-mc-1-21-1.pw.toml
- mods/fantasticwings-v21-1-1-1-21-1-neoforge.pw.toml
- mods/farmersdelight-1-21-1-1-2-11.pw.toml
- mods/ferritecore-7-0-2-neoforge.pw.toml
- mods/forgified-fabric-api-0-116-7-2-2-0-1-21-1.pw.toml
- mods/forgivingvoid-neoforge-1-21-1-21-1-6.pw.toml
- mods/framework-neoforge-1.21.1-0.13.11.jar
- mods/friendsandfoes-neoforge-4-0-23-mc1-21-1.pw.toml
- mods/ftb-chunks-neoforge-2101.1.14.jar
- mods/ftb-essentials-neoforge-2101.1.9.jar
- mods/ftb-library-neoforge-2101.1.31.jar
- mods/ftb-teams-neoforge-2101.1.10.jar
- mods/fusion-1-2-12-neoforge-mc1-21-1.pw.toml
- mods/fzzy-config-0-7-6-1-21-neoforge.pw.toml
- mods/geckolib-neoforge-1-21-1-4-8-4.pw.toml
- mods/gliders-1-21-1-neoforge-1-1-8.pw.toml
- mods/glow-up-neoforge-1-2-1-1-21-1-21-1-neoforge.pw.toml
- mods/goblintraders-neoforge-1.21.1-1.11.2.jar
- mods/gravestone-neoforge-1-21-1-1-0-35.pw.toml
- mods/guideme-21-1-15.pw.toml
- mods/handcrafted-neoforge-1-21-1-4-0-3.pw.toml
- mods/iceberg-1-21-1-neoforge-1-3-2.pw.toml
- mods/illagerinvasion-v21-1-6-1-21-1-neoforge.pw.toml
- mods/immediatelyfast-neoforge-1-6-9-1-21-1.pw.toml
- mods/incendium-1-21-x-v5-4-4.pw.toml
- mods/interiors-1-21-1-neoforge-0-6-1.pw.toml
- mods/iris-neoforge-1-8-12-mc1-21-1.pw.toml
- mods/ironfurnaces-neoforge-1-21-1-4-3-2.pw.toml
- mods/jade-1-21-1-neoforge-15-10-5.pw.toml
- mods/jadeaddons-1-21-1-neoforge-6-1-0.pw.toml
- mods/jademoddedentities-neoforge-1-21-1-1-3-1.pw.toml
- mods/jamlib-neoforge-1-3-6-1-21-1.pw.toml
- mods/jei-1-21-1-neoforge-19-27-0-340.pw.toml
- mods/jumpoverfences-neoforge-1-21-1-1-6-1.pw.toml
- mods/justenoughbreeding-neoforge-1-21-1-21-1-1-6-2.pw.toml
- mods/justenoughprofessions-neoforge-1-21-1-4-0-4.pw.toml
- mods/justenoughresources-neoforge-1-21-1-1-6-0-17.pw.toml
- mods/just-hammers-neoforge-21-1-4.pw.toml
- mods/justmobheads-1-21-1-8-5.pw.toml
- mods/justplayerheads-1-21-1-4-2.pw.toml
- mods/ketkets-furnicraft-4-4.pw.toml
- mods/konkrete-neoforge-1-9-9-mc-1-21.pw.toml
- mods/kotlinforforge-5-10-0-all.pw.toml
- mods/languagereload-neoforge-1-21-1-1-0-2.pw.toml
- mods/leavemybarsalone-v21-1-2-1-21-1-neoforge.pw.toml
- mods/lithium-neoforge-0-15-1-mc1-21-1.pw.toml
- mods/lootr-neoforge-1-21-1-1-11-37-118.pw.toml
- mods/magnumtorch-v21-1-1-1-21-1-neoforge.pw.toml
- mods/main-menu-credits-1-2-0.pw.toml
- mods/mcw-bridges-3-1-2-mc1-21-1neoforge.pw.toml
- mods/mcw-doors-1-1-5-mc1-21-1neoforge.pw.toml
- mods/mcw-furniture-3-4-1-mc1-21-1neoforge.pw.toml
- mods/mcw-holidays-1-1-2-mc1-21-1neoforge.pw.toml
- mods/mcw-lights-1-1-5-mc1-21-1neoforge.pw.toml
- mods/mcw-mcwfences-1-2-1-mc1-21-1neoforge.pw.toml
- mods/mcw-mcwpaths-1-1-1-mc1-21-1neoforge.pw.toml
- mods/mcw-mcwstairs-1-0-2-mc1-21-1neoforge.pw.toml
- mods/mcw-mcwwindows-2-4-2-mc1-21-1neoforge.pw.toml
- mods/mcw-paintings-1-1-0-mc1-21-1neoforge.pw.toml
- mods/mcw-roofs-2-3-2-mc1-21-1neoforge.pw.toml
- mods/mcw-trapdoors-1-1-5-mc1-21-1neoforge.pw.toml
- mods/mechanicals-1-21-1-1-1-0.pw.toml
- mods/melody-neoforge-1-0-10-mc-1-21.pw.toml
- mods/midnightcontrols-neoforge-1-10-0-1.pw.toml
- mods/midnightlib-neoforge-1-9-2-1-21-1.pw.toml
- mods/modelfix-1-21-1-10.pw.toml
- mods/modernfix-neoforge-5-25-1-mc1-21-1.pw.toml
- mods/moogsendstructures-1-21-2-0-1.pw.toml
- mods/moogsmissingvillages-1-21-2-0-0.pw.toml
- mods/moogsnetherstructures-1-21-2-0-31.pw.toml
- mods/moogssoaringstructures-1-21-2-0-2.pw.toml
- mods/moogs-structures-1-1-0-1-21-1-21-1-neoforge.pw.toml
- mods/moogstemplesreimagined-1-21-1-1-0.pw.toml
- mods/moogsvoyagerstructures-1-21-5-0-5.pw.toml
- mods/moonlight-1-21-2-29-29-neoforge.pw.toml
- mods/morechathistory-1-3-1.pw.toml
- mods/moreculling-neoforge-1-21-1-1-0-6.pw.toml
- mods/mousetweaks-neoforge-mc1-21-2-26-1.pw.toml
- mods/naturescompass-1-21-1-3-4-0-neoforge.pw.toml
- mods/neruina-3-2-2-1-21-1-neoforge.pw.toml
- mods/nochatreports-neoforge-1-21-1-v2-9-1.pw.toml
- mods/nullscape-1-21-x-v1-2-14.pw.toml
- mods/obsidianui-neoforge-0-2-9-mc1-21-1.pw.toml
- mods/optigui-2-3-0-beta-6-1-21.pw.toml
- mods/owo-lib-neoforge-0-12-15-5-beta-1-1-21.pw.toml
- mods/paginatedadvancements-2-5-1.pw.toml
- mods/piggyback-neoforge-1-21-1-1-1-1.pw.toml
- mods/ping-wheel-1-12-1-neoforge-1-21-1.pw.toml
- mods/pipez-neoforge-1-21-1-1-2-19.pw.toml
- mods/Placebo-1.21.1-9.9.1.jar
- mods/platform-neoforge-1-21-1-1-3.pw.toml
- mods/player-animation-lib-forge-2-0-4-1-21-1.pw.toml
- mods/polymorph-neoforge-1-1-0-1-21-1.pw.toml
- mods/polytone-1-21-3-6-1-neoforge.pw.toml
- mods/puzzleslib-v21-1-39-1-21-1-neoforge.pw.toml
- mods/ranged-weapon-api-neoforge-2-3-3-1-21-1.pw.toml
- mods/rechiseled-1-2-4-neoforge-mc1-21.pw.toml
- mods/rechiseledae2-neoforge-1-21-1-21-1-1-0-0.pw.toml
- mods/rechiseled-chipped-2-0-1-21-1.pw.toml
- mods/rechiseledcreate-1-1-0-neoforge-mc1-21.pw.toml
- mods/reeses-sodium-options-neoforge-1-8-3-mc1-21-4.pw.toml
- mods/refurbished_furniture-neoforge-1.21.1-1.0.22.jar
- mods/resourcefullib-neoforge-1-21-3-0-12.pw.toml
- mods/ribbits-1-21-1-neoforge-4-1-6.pw.toml
- mods/rightclickharvest-neoforge-4-6-1-1-21-1.pw.toml
- mods/ritchiesprojectilelib-2-1-2-mc-1-21-1-neoforge.pw.toml
- mods/ryoamiclights-neoforge-0-2-11-mc1-21-1.pw.toml
- mods/sawmill-1-21-1-7-2-neoforge.pw.toml
- mods/shetiphiancore-neoforge-1-21-1-1-1.pw.toml
- mods/skinlayers3d-neoforge-1-11-1-mc1-21-1.pw.toml
- mods/sknirofurniture-1-5-0-1-21-1-neoforge.pw.toml
- mods/sliceanddice-forge-4-2-4.pw.toml
- mods/smallernetherportals-1-21-1-3-9.pw.toml
- mods/smallships-neoforge-1-21-1-2-0-0-b2-1.pw.toml
- mods/sodium-extra-neoforge-0-6-0-mc1-21-1.pw.toml
- mods/sodium-neoforge-0-6-13-mc1-21-1.pw.toml
- mods/sophisticatedbackpacks-1-21-1-3-25-39-1665.pw.toml
- mods/sophisticatedcore-1-21-1-1-4-23-1664.pw.toml
- mods/sophisticatedstorage-1-21-1-1-5-36-1606.pw.toml
- mods/sophisticatedstoragecreateintegration-1-21-1-0-1-14-98.pw.toml
- mods/stellarity-3-0-6-1.pw.toml
- mods/storage-drawers-create-compat-1-0-1.pw.toml
- mods/storagedrawers-neoforge-1-21-1-13-11-4.pw.toml
- mods/structure-pool-api-neoforge-1-2-1-1-21-1.pw.toml
- mods/supermartijn642configlib-1-1-8-neoforge-mc1-21.pw.toml
- mods/supermartijn642corelib-1-1-21-neoforge-mc1-21.pw.toml
- mods/t-and-t-neoforge-fabric-1-13-7-1-21-1.pw.toml
- mods/taxfreelevels-1-4-7-neoforge-1-21-1.pw.toml
- mods/tf-dnv-2-0-3.pw.toml
- mods/tf-lost-blocks-1-21-1-1-5-0.pw.toml
- mods/tfmg-1-2-0.pw.toml
- mods/travelerstitles-1-21-1-neoforge-5-1-3.pw.toml
- mods/twilightdelight-3-1-1.pw.toml
- mods/twilightforest-1.21.1-4.8.3345-universal.jar
- mods/twilighttreehouses-1-0-2-1-21-1-neoforge.pw.toml
- mods/vanillabackport-neoforge-1-21-1-1-1-6-3.pw.toml
- mods/voicechat-neoforge-1-21-1-2-6-16.pw.toml
- mods/waystones-neoforge-1-21-1-21-1-29.pw.toml
- mods/wi-zoom-1-6-mc1-21-1-neoforge.pw.toml
- mods/xaerominimap-neoforge-1-21-1-25-3-10.pw.toml
- mods/xaeroworldmap-neoforge-1-21-1-1-40-11.pw.toml
- mods/xmxw-2-7-5-1-21-1-neoforge.pw.toml
- mods/yet-another-config-lib-v3-3-8-1-1-21-1-neoforge.pw.toml
- mods/yungsapi-1-21-1-neoforge-5-1-6.pw.toml
- mods/yungsbettercaves-1-21-1-neoforge-3-1-4.pw.toml
- mods/yungsbetterdeserttemples-1-21-1-neoforge-4-1-5.pw.toml
- mods/yungsbetterdungeons-1-21-1-neoforge-5-1-4.pw.toml
- mods/yungsbetterendisland-1-21-1-neoforge-3-1-2.pw.toml
- mods/yungsbetterjungletemples-1-21-1-neoforge-3-1-2.pw.toml
- mods/yungsbettermineshafts-1-21-1-neoforge-5-1-1.pw.toml
- mods/yungsbetternetherfortresses-1-21-1-neoforge-3-1-5.pw.toml
- mods/yungsbetteroceanmonuments-1-21-1-neoforge-4-1-2.pw.toml
- mods/yungsbetterstrongholds-1-21-1-neoforge-5-1-3.pw.toml
- mods/yungsbetterwitchhuts-1-21-1-neoforge-4-1-1.pw.toml
- mods/yungsbridges-1-21-1-neoforge-5-1-1.pw.toml
- mods/yungsextras-1-21-1-neoforge-5-1-1.pw.toml
- mods/yungsmenutweaks-1-21-1-neoforge-2-1-2.pw.toml
- options.txt
- resourcepacks/-1.21.2 Fresh Moves v3.1 (With Animated Eyes).zip
- resourcepacks/Chat Reporting Helper.zip
- resourcepacks/EAK.zip
- resourcepacks/FA+All_Extensions-v1.8.zip
- resourcepacks/FA-Player
- resourcepacks/Fast Better Grass.zip
- resourcepacks/FreshAnimations_v1.10.4.zip
- resourcepacks/LowOnFire v26.1§8.zip
- resourcepacks/SodiumTranslations.zip
- servers.dat
- shaderpacks/Solas Shader V3.5.zip

## Exact commands run

- `Get-Location; Get-ChildItem -Force; Get-ChildItem -Recurse -File -Include *.jar,*.toml,*.json,*.txt,*.cfg,*.properties,*.mrpack,*.zip | Select-Object -First 200 FullName`
- `git status --short; git remote -v; git branch --show-current`
- `packwiz --version; java -version; git --version`
- `Get-ChildItem -Path mods -File -Filter *.jar | Sort-Object Name | Select-Object Name,Length,LastWriteTime`
- `rg -n "minecraft|neoforge|forge|fabric|quilt|loader|version" -g "*.json" -g "*.toml" -g "*.txt" -g "*.cfg" -g "*.properties" .`
- `Computed SHA-512/SHA-1 hashes and jar metadata`
- `Invoke-RestMethod POST https://api.modrinth.com/v2/version_files using SHA-512 hashes`
- `Invoke-RestMethod GET https://maven.neoforged.net/releases/net/neoforged/neoforge/maven-metadata.xml`
- `Generated 244 mods/*.pw.toml files from exact Modrinth hash matches`
- `powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\refresh-pack.ps1`
- `powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-prism-zip.ps1`

## Manual steps still needed

1. Confirm the exact NeoForge loader version from the original launcher, if you know it. If different from `21.1.227`, update `pack.toml` and `deployment.json` or `deployment.example.json`.
2. Install `packwiz` from `https://github.com/packwiz/packwiz/releases` and put `packwiz.exe` on PATH.
3. Create `deployment.json` from `deployment.example.json` if you want custom values.
4. Initialize Git, add the GitHub remote, commit, and push to `https://github.com/yarnobachmann/EenAllesKanaalSMP-modpack-Season-3.git`.
5. Enable GitHub Pages from the repository root, or move the pack files into `/docs` and publish from `/docs`.
6. Verify the hosted URL loads in a browser: `https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/pack.toml`.
7. Import `dist/EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip` in Prism after GitHub Pages is live.
8. Review the 13 unresolved/local-hosted jars. They will work from GitHub Pages, but they will not auto-update from Modrinth.

## Folder tree created or changed

```text
.nojekyll
.gitignore
README.md
codex-report.md
deployment.example.json
index.toml
pack.toml
scripts/
  setup-packwiz.ps1
  refresh-pack.ps1
  build-prism-zip.ps1
mods/
  *.pw.toml (244 Modrinth metadata files)
dist/
  EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip
EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip
modpack icon.png
```

## Prism zip contents

```text
instance.cfg
mmc-pack.json
eak-season-3.png
minecraft/
  packwiz-installer-bootstrap.jar
```

The Prism zip sets `MinMemAlloc=6144` and `MaxMemAlloc=6144`.

## Created script and config file contents

### .gitignore

```text
# Keep generated staging out of commits.
dist/prism-staging/

# Matched Modrinth mods are represented by mods/*.pw.toml and do not need to be committed as jars.
# The unresolved jars below are explicitly kept because packwiz indexes them as locally hosted files.
mods/.connector/
mods/**/*.jar
mods/*.jar
!mods/Apotheosis-1.21.1-8.5.2.jar
!mods/ApothicAttributes-1.21.1-2.9.1.jar
!mods/ApothicEnchanting-1.21.1-1.5.2.jar
!mods/ApothicSpawners-1.21.1-1.3.4.jar
!mods/framework-neoforge-1.21.1-0.13.11.jar
!mods/ftb-chunks-neoforge-2101.1.14.jar
!mods/ftb-essentials-neoforge-2101.1.9.jar
!mods/ftb-library-neoforge-2101.1.31.jar
!mods/ftb-teams-neoforge-2101.1.10.jar
!mods/goblintraders-neoforge-1.21.1-1.11.2.jar
!mods/Placebo-1.21.1-9.9.1.jar
!mods/refurbished_furniture-neoforge-1.21.1-1.0.22.jar
!mods/twilightforest-1.21.1-4.8.3345-universal.jar

```

### deployment.example.json

```json
{
  "githubUsername": "yarnobachmann",
  "repoName": "EenAllesKanaalSMP-modpack-Season-3",
  "pagesRoot": "root",
  "packUrl": "https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/pack.toml",
  "instanceName": "EenAllesKanaal SMP Season 3",
  "minecraftVersion": "1.21.1",
  "loader": "neoforge",
  "loaderVersion": "21.1.227"
}

```

### scripts/setup-packwiz.ps1

```powershell
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

Write-Host "Checking packwiz setup in $Root"

$packwiz = Get-Command packwiz -ErrorAction SilentlyContinue
if ($packwiz) {
    Write-Host "packwiz found: $($packwiz.Source)"
    & packwiz --version
} else {
    Write-Warning "packwiz was not found on PATH."
    Write-Host "Install options:"
    Write-Host "  1. Download a Windows release from https://github.com/packwiz/packwiz/releases"
    Write-Host "  2. Put packwiz.exe in a folder on PATH"
    Write-Host "  3. Re-run: .\scripts\setup-packwiz.ps1"
}

$java = Get-Command java -ErrorAction SilentlyContinue
if ($java) {
    Write-Host "java found: $($java.Source)"
    & java -version
    Write-Warning "Minecraft 1.21.1 normally needs Java 21 in Prism. The Java shown above is only your shell PATH Java."
} else {
    Write-Warning "java was not found on PATH. Prism can still use its own Java runtime."
}

if (-not (Test-Path ".\deployment.json") -and (Test-Path ".\deployment.example.json")) {
    Write-Host "Copy deployment.example.json to deployment.json and edit it when you are ready to build a real Prism zip."
}

if (Test-Path ".\pack.toml") {
    Write-Host "pack.toml exists."
} else {
    Write-Warning "pack.toml is missing."
}

if (Test-Path ".\index.toml") {
    Write-Host "index.toml exists."
} else {
    Write-Warning "index.toml is missing. Run .\scripts\refresh-pack.ps1 after pack.toml exists."
}

```

### scripts/refresh-pack.ps1

```powershell
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

function ConvertTo-PackPath {
    param([string]$Path)
    $fullRoot = (Resolve-Path -LiteralPath $Root).Path.TrimEnd("\", "/")
    $fullPath = (Resolve-Path -LiteralPath $Path).Path
    $relative = $fullPath.Substring($fullRoot.Length).TrimStart("\", "/")
    return ($relative -replace "\\", "/")
}

function Get-Sha256 {
    param([string]$Path)
    return (Get-FileHash -Algorithm SHA256 -LiteralPath $Path).Hash.ToLowerInvariant()
}

function Add-IndexedFile {
    param(
        [System.Collections.Generic.List[object]]$Files,
        [string]$Path,
        [bool]$Metafile
    )

    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        return
    }

    $Files.Add([pscustomobject]@{
        file = ConvertTo-PackPath $Path
        hash = Get-Sha256 $Path
        metafile = $Metafile
    })
}

if (-not (Test-Path ".\pack.toml")) {
    throw "pack.toml is missing. Create it before refreshing the index."
}

$indexed = [System.Collections.Generic.List[object]]::new()
$managedModJars = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)

Get-ChildItem -Path ".\mods" -Filter "*.pw.toml" -File -ErrorAction SilentlyContinue | Sort-Object FullName | ForEach-Object {
    $content = Get-Content -Raw -LiteralPath $_.FullName
    if ($content -match '(?m)^filename\s*=\s*"([^"]+)"') {
        [void]$managedModJars.Add($Matches[1])
    }
    Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $true
}

Get-ChildItem -Path ".\mods" -Filter "*.jar" -File -ErrorAction SilentlyContinue | Sort-Object FullName | ForEach-Object {
    if (-not $managedModJars.Contains($_.Name)) {
        Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $false
    }
}

$contentDirs = @(
    "config",
    "defaultconfigs",
    "kubejs",
    "resourcepacks",
    "shaderpacks",
    "datapacks"
)

foreach ($dir in $contentDirs) {
    if (Test-Path -LiteralPath ".\$dir" -PathType Container) {
        Get-ChildItem -LiteralPath ".\$dir" -File -Recurse | Sort-Object FullName | ForEach-Object {
            Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $false
        }
    }
}

$rootFiles = @(
    "options.txt",
    "optionsof.txt",
    "servers.dat"
)

foreach ($file in $rootFiles) {
    Add-IndexedFile -Files $indexed -Path ".\$file" -Metafile $false
}

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add("hash-format = `"sha256`"")
$lines.Add("")

foreach ($entry in ($indexed | Sort-Object file)) {
    $lines.Add("[[files]]")
    $lines.Add("file = `"$($entry.file)`"")
    $lines.Add("hash = `"$($entry.hash)`"")
    $lines.Add("metafile = $($entry.metafile.ToString().ToLowerInvariant())")
    $lines.Add("")
}

$indexText = $lines -join "`n"
Set-Content -LiteralPath ".\index.toml" -Value $indexText -Encoding UTF8

$indexHash = Get-Sha256 ".\index.toml"
$packText = Get-Content -Raw -LiteralPath ".\pack.toml"
if ($packText -match '(?s)(\[index\].*?hash\s*=\s*")[^"]+(")') {
    $packText = [regex]::Replace($packText, '(?s)(\[index\].*?hash\s*=\s*")[^"]+(")', "`${1}$indexHash`${2}", 1)
} else {
    throw "Could not find [index] hash in pack.toml."
}
Set-Content -LiteralPath ".\pack.toml" -Value $packText -Encoding UTF8

Write-Host "Indexed $($indexed.Count) files."
Write-Host "index.toml sha256: $indexHash"

```

### scripts/build-prism-zip.ps1

```powershell
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

function Read-DeploymentConfig {
    $configPath = ".\deployment.json"
    if (-not (Test-Path $configPath)) {
        $configPath = ".\deployment.example.json"
    }
    if (-not (Test-Path $configPath)) {
        throw "deployment.example.json is missing."
    }
    return Get-Content -Raw -LiteralPath $configPath | ConvertFrom-Json
}

function Get-PackVersion {
    $packText = Get-Content -Raw -LiteralPath ".\pack.toml"
    if ($packText -match '(?m)^version\s*=\s*"([^"]+)"') {
        return $Matches[1]
    }
    return (Get-Date -Format "yyyyMMdd-HHmm")
}

& "$PSScriptRoot\refresh-pack.ps1"

$config = Read-DeploymentConfig
$instanceName = $config.instanceName
$minecraftVersion = $config.minecraftVersion
$loaderVersion = $config.loaderVersion
$packUrl = $config.packUrl

if ([string]::IsNullOrWhiteSpace($instanceName)) { throw "instanceName is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($minecraftVersion)) { throw "minecraftVersion is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($loaderVersion)) { throw "loaderVersion is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($packUrl)) { throw "packUrl is missing from deployment config." }

$dist = Join-Path $Root "dist"
$stagingRoot = Join-Path $dist "prism-staging"
$instanceRoot = Join-Path $stagingRoot $instanceName
$bootstrapPath = Join-Path $instanceRoot "packwiz-installer-bootstrap.jar"

if (Test-Path $stagingRoot) {
    Remove-Item -LiteralPath $stagingRoot -Recurse -Force
}
New-Item -ItemType Directory -Force -Path $instanceRoot | Out-Null

$instanceCfg = @"
ConfigVersion=1.2
InstanceType=OneSix
name=$instanceName
iconKey=default
OverrideCommands=true
PreLaunchCommand=`"`$INST_JAVA`" -jar packwiz-installer-bootstrap.jar $packUrl
"@
Set-Content -LiteralPath (Join-Path $instanceRoot "instance.cfg") -Value $instanceCfg -Encoding UTF8

$mmcPack = [ordered]@{
    components = @(
        [ordered]@{
            cachedName = "Minecraft"
            uid = "net.minecraft"
            version = $minecraftVersion
        },
        [ordered]@{
            cachedName = "NeoForge"
            uid = "net.neoforged"
            version = $loaderVersion
        }
    )
    formatVersion = 1
}
$mmcPack | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $instanceRoot "mmc-pack.json") -Encoding UTF8

$bootstrapUrl = "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar"
Invoke-WebRequest -Uri $bootstrapUrl -OutFile $bootstrapPath

$safeName = ($instanceName -replace '[^A-Za-z0-9._-]+', '-').Trim("-")
$version = Get-PackVersion
$zipPath = Join-Path $dist "$safeName-$version-prism.zip"
if (Test-Path $zipPath) {
    Remove-Item -LiteralPath $zipPath -Force
}

Compress-Archive -LiteralPath $instanceRoot -DestinationPath $zipPath -Force
Remove-Item -LiteralPath $stagingRoot -Recurse -Force
Write-Host "Created $zipPath"

```

### pack.toml

```toml
name = "EenAllesKanaal SMP Season 3"
author = "EenAllesKanaal SMP"
version = "1.0.0"
pack-format = "packwiz:1.1.0"

[index]
file = "index.toml"
hash-format = "sha256"
hash = "ca5128f61279d695c934a42681e11355ba09042251a34645f01f871449693f96"

[versions]
minecraft = "1.21.1"
neoforge = "21.1.227"





```

### .nojekyll

```text


```

