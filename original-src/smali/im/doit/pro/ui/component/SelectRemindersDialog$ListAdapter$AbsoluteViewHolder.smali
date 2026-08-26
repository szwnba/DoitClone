.class Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;
.super Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbsoluteViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    .line 415
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V

    .line 416
    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$9(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 417
    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->reminderTimeTV:Landroid/widget/TextView;

    .line 418
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DSwitch;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    .line 419
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-static {p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$10(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 420
    return-void
.end method


# virtual methods
.method public setViewContent(ILim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "listData"    # Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .prologue
    .line 424
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setTag(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    iget-boolean v1, p2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 426
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;->reminderTimeTV:Landroid/widget/TextView;

    iget-object v1, p2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method
