.class Lim/doit/pro/activity/SmartAddActivity$2;
.super Ljava/lang/Object;
.source "SmartAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SmartAddActivity;->setViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastInputStr:Ljava/lang/String;

.field lastSmartIndex:I

.field final synthetic this$0:Lim/doit/pro/activity/SmartAddActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastSmartIndex:I

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastInputStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v10, 0x7f0c0149

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 312
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "inputAll":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "arrayInput":[Ljava/lang/String;
    array-length v5, v0

    if-nez v5, :cond_0

    .line 315
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 316
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$5(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->notifyDataSetChanged()V

    .line 375
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastSmartIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 321
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 322
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$5(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v3, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastInputStr:Ljava/lang/String;

    .line 326
    .local v3, "lastInput":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 327
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 328
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$5(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 331
    :cond_2
    const-string v5, "^"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 332
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$6(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v7}, Lim/doit/pro/activity/SmartAddActivity;->access$7(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/SmartAddActivity;->access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 333
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$7(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    const-string v7, "^"

    invoke-static {v5, v6, v2, v7, v8}, Lim/doit/pro/activity/SmartAddActivity;->access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$6(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 335
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$6(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_3
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_2
    if-gez v1, :cond_8

    .line 374
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$5(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 336
    .end local v1    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 337
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$11(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v7}, Lim/doit/pro/activity/SmartAddActivity;->access$12(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/SmartAddActivity;->access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 338
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$12(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    const-string v7, "@"

    invoke-static {v5, v6, v2, v7, v8}, Lim/doit/pro/activity/SmartAddActivity;->access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$11(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 340
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$11(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$12(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 342
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5, v10}, Lim/doit/pro/activity/SmartAddActivity;->access$13(Lim/doit/pro/activity/SmartAddActivity;I)V

    goto :goto_1

    .line 344
    :cond_5
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 345
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$14(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v7}, Lim/doit/pro/activity/SmartAddActivity;->access$15(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/SmartAddActivity;->access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 346
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$15(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    const-string v7, "#"

    invoke-static {v5, v6, v2, v7, v8}, Lim/doit/pro/activity/SmartAddActivity;->access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$14(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 348
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$14(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$15(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 350
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5, v10}, Lim/doit/pro/activity/SmartAddActivity;->access$13(Lim/doit/pro/activity/SmartAddActivity;I)V

    goto/16 :goto_1

    .line 352
    :cond_6
    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 353
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$16(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v7}, Lim/doit/pro/activity/SmartAddActivity;->access$17(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/SmartAddActivity;->access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 354
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$17(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    const-string v7, "!"

    invoke-static {v5, v6, v2, v7, v8}, Lim/doit/pro/activity/SmartAddActivity;->access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$16(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 356
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$16(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 357
    :cond_7
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$18(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v7}, Lim/doit/pro/activity/SmartAddActivity;->access$19(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/SmartAddActivity;->access$8(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 359
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$19(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    const-string v7, "&"

    invoke-static {v5, v6, v2, v7, v9}, Lim/doit/pro/activity/SmartAddActivity;->access$9(Lim/doit/pro/activity/SmartAddActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$18(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 361
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$18(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$10(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$18(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v9, :cond_3

    .line 363
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    const v6, 0x7f0c014a

    invoke-static {v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->access$13(Lim/doit/pro/activity/SmartAddActivity;I)V

    goto/16 :goto_1

    .line 369
    .restart local v1    # "i":I
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 371
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$2;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 368
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 381
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 387
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    add-int v6, p2, p4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "prevStr":Ljava/lang/String;
    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, "index":I
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 390
    .local v2, "otherIndex":I
    if-le v2, v1, :cond_0

    move v1, v2

    .line 391
    :cond_0
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 392
    if-le v2, v1, :cond_1

    move v1, v2

    .line 393
    :cond_1
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 394
    if-le v2, v1, :cond_2

    move v1, v2

    .line 395
    :cond_2
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 396
    if-le v2, v1, :cond_3

    move v1, v2

    .line 397
    :cond_3
    if-eqz v1, :cond_4

    .line 398
    if-lez v1, :cond_7

    const-string v4, " "

    .line 399
    add-int/lit8 v5, v1, -0x1

    .line 398
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 399
    if-eqz v4, :cond_7

    .line 400
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, "ch":C
    const/16 v4, 0x5e

    if-eq v0, v4, :cond_5

    const/16 v4, 0x40

    if-eq v0, v4, :cond_5

    const/16 v4, 0x23

    if-eq v0, v4, :cond_5

    const/16 v4, 0x21

    if-eq v0, v4, :cond_5

    .line 402
    const/16 v4, 0x26

    if-ne v0, v4, :cond_6

    .line 403
    :cond_5
    iput v1, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastSmartIndex:I

    .line 404
    iget v4, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastSmartIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastInputStr:Ljava/lang/String;

    .line 411
    .end local v0    # "ch":C
    :cond_6
    :goto_0
    return-void

    .line 407
    :cond_7
    const/4 v4, -0x1

    iput v4, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastSmartIndex:I

    .line 408
    const-string v4, ""

    iput-object v4, p0, Lim/doit/pro/activity/SmartAddActivity$2;->lastInputStr:Ljava/lang/String;

    goto :goto_0
.end method
