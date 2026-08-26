.class Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoitListActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;)V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1243
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method private onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x0

    .line 1244
    iget-object v7, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v7}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 1245
    iget-object v7, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v7}, Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V

    .line 1287
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v7, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v7}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$4(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v8}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 1251
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 1252
    const v8, 0x7f0e0004

    .line 1251
    invoke-virtual {v7, v8, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1253
    iget-object v7, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v7}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1254
    .local v6, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowMovetoButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1255
    const v7, 0x7f0b0213

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1256
    .local v2, "moveToBtn":Landroid/view/MenuItem;
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1258
    .end local v2    # "moveToBtn":Landroid/view/MenuItem;
    :cond_1
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowConvertToProjectButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1259
    const v7, 0x7f0b0214

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1260
    .local v0, "convertBtn":Landroid/view/MenuItem;
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1262
    .end local v0    # "convertBtn":Landroid/view/MenuItem;
    :cond_2
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectPriorityButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1263
    const v7, 0x7f0b0218

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1264
    .local v3, "priorityBtn":Landroid/view/MenuItem;
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1266
    .end local v3    # "priorityBtn":Landroid/view/MenuItem;
    :cond_3
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectProjectButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1267
    const v7, 0x7f0b0215

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1268
    .local v4, "projectBtn":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1270
    .end local v4    # "projectBtn":Landroid/view/MenuItem;
    :cond_4
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectContextButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1271
    const v7, 0x7f0b0217

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1272
    .restart local v4    # "projectBtn":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1274
    .end local v4    # "projectBtn":Landroid/view/MenuItem;
    :cond_5
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectGoalButton(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1275
    const v7, 0x7f0b0216

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1276
    .restart local v4    # "projectBtn":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1278
    .end local v4    # "projectBtn":Landroid/view/MenuItem;
    :cond_6
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowDeleteButtonInActionBar(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1279
    const v7, 0x7f0b0211

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1280
    .local v1, "deleteBtn":Landroid/view/MenuItem;
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1282
    .end local v1    # "deleteBtn":Landroid/view/MenuItem;
    :cond_7
    invoke-static {v6}, Lim/doit/pro/utils/BoxUtils;->isNotShowPutBackButtonInActionBar(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1283
    const v7, 0x7f0b0219

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1284
    .local v5, "putbackBtn":Landroid/view/MenuItem;
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1286
    .end local v5    # "putbackBtn":Landroid/view/MenuItem;
    :cond_8
    iget-object v7, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lim/doit/pro/activity/listview/ListViewAdapter;->isAcionModeDone:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1294
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1295
    .local v0, "id":I
    const v2, 0x7f0b0213

    if-ne v0, v2, :cond_0

    .line 1296
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$5(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1320
    :goto_0
    return v1

    .line 1298
    :cond_0
    const v2, 0x7f0b0214

    if-ne v0, v2, :cond_1

    .line 1299
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$6(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1301
    :cond_1
    const v2, 0x7f0b0215

    if-ne v0, v2, :cond_2

    .line 1302
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$7(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1304
    :cond_2
    const v2, 0x7f0b0217

    if-ne v0, v2, :cond_3

    .line 1305
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$8(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1307
    :cond_3
    const v2, 0x7f0b0216

    if-ne v0, v2, :cond_4

    .line 1308
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$9(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1310
    :cond_4
    const v2, 0x7f0b0218

    if-ne v0, v2, :cond_5

    .line 1311
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$10(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1313
    :cond_5
    const v2, 0x7f0b0211

    if-ne v0, v2, :cond_6

    .line 1314
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->trashItems()V

    goto :goto_0

    .line 1316
    :cond_6
    const v2, 0x7f0b0219

    if-ne v0, v2, :cond_7

    .line 1317
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$11(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0

    .line 1320
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1239
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 1240
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1325
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 1326
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-boolean v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->isAcionModeDone:Z

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onItemSelectedDone()V

    .line 1329
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$4(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1330
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1290
    const/4 v0, 0x0

    return v0
.end method
