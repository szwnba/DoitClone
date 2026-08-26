.class Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;
.super Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelativeViewHolder"
.end annotation


# instance fields
.field public downBtn:Landroid/widget/ImageButton;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

.field public unitTV:Landroid/widget/TextView;

.field public upBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    .line 366
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V

    .line 367
    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$9(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030096

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 368
    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->upBtn:Landroid/widget/ImageButton;

    .line 369
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->downBtn:Landroid/widget/ImageButton;

    .line 370
    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->reminderTimeTV:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->unitTV:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DSwitch;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    .line 373
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$10(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 374
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->upBtn:Landroid/widget/ImageButton;

    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$11(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->downBtn:Landroid/widget/ImageButton;

    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$12(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method


# virtual methods
.method public setViewContent(ILim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "listData"    # Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .prologue
    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "time":I
    const v3, 0x7f0c00bd

    .line 382
    .local v3, "unit":I
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$7(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    invoke-virtual {v5}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 383
    .local v1, "diffMinute":I
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_0

    .line 384
    const v3, 0x7f0c00bd

    .line 385
    move v2, v1

    .line 402
    :goto_0
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->reminderTimeTV:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->unitTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/DSwitch;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    iget-boolean v5, p2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 406
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->upBtn:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;->downBtn:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 408
    return-void

    .line 386
    :cond_0
    rem-int/lit8 v4, v1, 0x3c

    if-nez v4, :cond_3

    .line 387
    div-int/lit8 v0, v1, 0x3c

    .line 388
    .local v0, "diffHour":I
    const/16 v4, 0x18

    if-ge v0, v4, :cond_1

    .line 389
    const v3, 0x7f0c00be

    .line 390
    move v2, v0

    .line 391
    goto :goto_0

    :cond_1
    rem-int/lit8 v4, v0, 0x18

    if-nez v4, :cond_2

    .line 392
    const v3, 0x7f0c00bf

    .line 393
    div-int/lit8 v2, v0, 0x18

    .line 394
    goto :goto_0

    .line 395
    :cond_2
    const v3, 0x7f0c00be

    .line 396
    move v2, v0

    .line 398
    goto :goto_0

    .line 399
    .end local v0    # "diffHour":I
    :cond_3
    const v3, 0x7f0c00bd

    .line 400
    move v2, v1

    goto :goto_0
.end method
