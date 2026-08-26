.class final Lcom/crashlytics/android/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/D;

.field final synthetic b:Lcom/crashlytics/android/Crashlytics;

.field private synthetic c:Landroid/app/Activity;

.field private synthetic d:Lcom/crashlytics/android/ak;

.field private synthetic e:Lcom/crashlytics/android/ay;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/D;Lcom/crashlytics/android/ak;Lcom/crashlytics/android/ay;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/x;->a:Lcom/crashlytics/android/D;

    iput-object p4, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    iput-object p5, p0, Lcom/crashlytics/android/x;->e:Lcom/crashlytics/android/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 738
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    new-instance v1, Lcom/crashlytics/android/y;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/y;-><init>(Lcom/crashlytics/android/x;)V

    .line 748
    iget-object v2, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 752
    iget-object v3, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    const/4 v4, 0x5

    invoke-static {v3, v2, v4}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v3

    .line 754
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 756
    iget-object v5, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    invoke-virtual {v5}, Lcom/crashlytics/android/ak;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v5, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 758
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 761
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/crashlytics/android/x;->c:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 762
    iget-object v5, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v6, 0xe

    invoke-static {v5, v2, v6}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v5

    iget-object v6, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v6

    iget-object v7, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v8, 0xa

    invoke-static {v7, v2, v8}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v7

    iget-object v8, p0, Lcom/crashlytics/android/x;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v9, 0xc

    invoke-static {v8, v2, v9}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 764
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 768
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    invoke-virtual {v3}, Lcom/crashlytics/android/ak;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    invoke-virtual {v3}, Lcom/crashlytics/android/ak;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    iget-object v1, p0, Lcom/crashlytics/android/x;->e:Lcom/crashlytics/android/ay;

    iget-boolean v1, v1, Lcom/crashlytics/android/ay;->d:Z

    if-eqz v1, :cond_0

    .line 772
    new-instance v1, Lcom/crashlytics/android/z;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/z;-><init>(Lcom/crashlytics/android/x;)V

    .line 779
    iget-object v2, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    invoke-virtual {v2}, Lcom/crashlytics/android/ak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/x;->e:Lcom/crashlytics/android/ay;

    iget-boolean v1, v1, Lcom/crashlytics/android/ay;->f:Z

    if-eqz v1, :cond_1

    .line 783
    new-instance v1, Lcom/crashlytics/android/A;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/A;-><init>(Lcom/crashlytics/android/x;)V

    .line 791
    iget-object v2, p0, Lcom/crashlytics/android/x;->d:Lcom/crashlytics/android/ak;

    invoke-virtual {v2}, Lcom/crashlytics/android/ak;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 795
    return-void
.end method
